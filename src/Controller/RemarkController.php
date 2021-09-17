<?php

namespace App\Controller;

use DateTime;
use App\Entity\Remark;
use App\Entity\Article;
use App\Form\RemarkType;
use App\Repository\RemarkRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;


/**
 * @Route("/remark")
 */
class RemarkController extends AbstractController
{
    /**
     * @Route("/", name="remark_index", methods={"GET"})
     */
    public function index(RemarkRepository $remarkRepository): Response
    {
        return $this->render('remark/index.html.twig', [
            'remarks' => $remarkRepository->findAll(),
        ]);
    }

    /**
     * @Route("/{id}/new", name="remark_new", methods={"GET","POST"})
     */
    public function new(Request $request, $id): Response
    {
        
        $remark = new Remark();
        $user = $this->getUser();
        // $article = $this->getArticle();
        $article = $this->getDoctrine()->getRepository(Article::class)->findOneBy(['id'=>$id]);
        
        $form = $this->createForm(RemarkType::class, $remark);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            
            $dateTimeR = new DateTime();
            $remark->setDateCreate($dateTimeR)
                ->setDateEdit($dateTimeR)
                ->setUser($user)
                ->setArticle($article)
                ;
                
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($remark);
            $entityManager->flush();

            return $this->redirectToRoute('category_filtreAff', ['id'=>$article->getId()], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('remark/new.html.twig', [
            'remark' => $remark,
            'form' => $form,
        ]);
    }

    /**
     * @Route("/{id}", name="remark_show", methods={"GET"})
     */
    public function show(Remark $remark): Response
    {
        return $this->render('remark/show.html.twig', [
            'remark' => $remark,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="remark_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, Remark $remark): Response
    {
        $form = $this->createForm(RemarkType::class, $remark);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('remark_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('remark/edit.html.twig', [
            'remark' => $remark,
            'form' => $form,
        ]);
    }

    /**
     * @Route("/{id}", name="remark_delete", methods={"POST"})
     */
    public function delete(Request $request, Remark $remark): Response
    {
        if ($this->isCsrfTokenValid('delete'.$remark->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($remark);
            $entityManager->flush();
        }

        return $this->redirectToRoute('remark_index', [], Response::HTTP_SEE_OTHER);
    }
}
