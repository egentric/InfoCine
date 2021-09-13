<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20210913142645 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE remark ADD user_id INT DEFAULT NULL, ADD article_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE remark ADD CONSTRAINT FK_E1CAD839A76ED395 FOREIGN KEY (user_id) REFERENCES user (id)');
        $this->addSql('ALTER TABLE remark ADD CONSTRAINT FK_E1CAD8397294869C FOREIGN KEY (article_id) REFERENCES article (id)');
        $this->addSql('CREATE INDEX IDX_E1CAD839A76ED395 ON remark (user_id)');
        $this->addSql('CREATE INDEX IDX_E1CAD8397294869C ON remark (article_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE remark DROP FOREIGN KEY FK_E1CAD839A76ED395');
        $this->addSql('ALTER TABLE remark DROP FOREIGN KEY FK_E1CAD8397294869C');
        $this->addSql('DROP INDEX IDX_E1CAD839A76ED395 ON remark');
        $this->addSql('DROP INDEX IDX_E1CAD8397294869C ON remark');
        $this->addSql('ALTER TABLE remark DROP user_id, DROP article_id');
    }
}
