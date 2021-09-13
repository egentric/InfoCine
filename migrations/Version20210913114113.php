<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20210913114113 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE categotry (id INT AUTO_INCREMENT NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE categotry_article (categotry_id INT NOT NULL, article_id INT NOT NULL, INDEX IDX_20B6A1FD67534A84 (categotry_id), INDEX IDX_20B6A1FD7294869C (article_id), PRIMARY KEY(categotry_id, article_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE categotry_article ADD CONSTRAINT FK_20B6A1FD67534A84 FOREIGN KEY (categotry_id) REFERENCES categotry (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE categotry_article ADD CONSTRAINT FK_20B6A1FD7294869C FOREIGN KEY (article_id) REFERENCES article (id) ON DELETE CASCADE');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE categotry_article DROP FOREIGN KEY FK_20B6A1FD67534A84');
        $this->addSql('DROP TABLE categotry');
        $this->addSql('DROP TABLE categotry_article');
    }
}
