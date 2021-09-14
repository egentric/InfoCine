<?php

namespace App\Form;

use App\Entity\Article;
use App\Entity\Category;
use Symfony\Component\Form\AbstractType;
use FOS\CKEditorBundle\Form\Type\CKEditorType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Validator\Constraints\File;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\FileType;

class ArticleType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('title')
            ->add('dateRelease')
            ->add('contents', CKEditorType::class)
            // ->add('img')
            ->add('img', FileType::class, [
                'label' => 'Photo',
                'mapped' => false,
                'required' => false,
                'constraints' => [
                new File([
                'maxSize' => '1024k',
                'mimeTypes' => [
                'image/*',
                ],
               'mimeTypesMessage' => 'Veuillez entrer un format de document
               valide',
                ])
                ],
                ])

            ->add('video')
            // ->add('dateCreate')
            // ->add('dateEdit')
            
            ->add('categories', EntityType::class, [
                'class' => Category::class,
                'choice_label' => 'nameCategory',
                'multiple' => true,
                'expanded' => true,
                ])
                
               
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Article::class,
        ]);
    }
}
