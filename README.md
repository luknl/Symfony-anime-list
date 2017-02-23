Neussaipa - E11 - My Anime List
========================

## Getting Started

* Clone the project `git clone https://github.com/luknl/E17---Neussaipa.git`
* Run composer `composer install`
* Create the database `sf doctrine:database:create`
> Import *Neussaipa.sql* in database in phpMyAdmin
* Run the server `sf server:run`
> Login with *pseudo: admin* and *password: admin* to have access to all functionnalities

##Configs
This project uses the framework *Symfony 3.2* for PHP

The following Bundles are used : 
* FOS User Bundle ([documentation](http://symfony.com/doc/current/bundles/FOSUserBundle/index.html))
* Sonata Admin Bundle ([documentation](https://symfony.com/doc/current/bundles/SonataAdminBundle/index.html))


#### For developpers

##### Lancer le projet après récupération


* `git clone https://github.com/luknl/E17---Neussaipa.git`
* `composer install`
	- Port : 8889 (dépend de ce qu’on a mis dans MAMP)
	- database password : root
* `php bin/symfony_requirements` => Tester si Symfony est bien installé
(Pas oublier d'allumer MAMP)
* `sf doctrine:database:create`
* `sf doctrine:schema:update --force`
* (Si erreurs `sf doctrine:database:drop` puis recommencer)
* `sf server:run` pour lancer le serveur


##### Autres commandes

* `sf debug:container` => Liste tout les services
* `sf debug:container | grep account` => Liste les services contenant « account » 
* `sf debug:container app.service.accounting_service` => Toutes les infos sur ce service
* `sf debug:router` => Vérife les routes
* `vendor/bin/phpunit` : Lancer le/les test(s) unitaire(s)


##### Jointures table 
Lors de la génération de l'entity : $type object puis dans Entity/Anime.php
```php
/**
* @ORM\ManyToOne(targetEntity="AnimeType")
* @ORM\JoinColumn(name="type_id", referencedColumnName="id", nullable=false)
*/
private $type;
```
Ensuite run `sf doctrine:schema:update --force` pour updater la base de données

Dans le formulaire pour les listes déroulantes :
```php
->add('type', EntityType::class, array(
    // query choices from this entity
    'class' => 'AnimeBundle:AnimeType',
    // use the User.username property as the visible option string
    'choice_label' => 'name',
    'multiple' => false,
    'expanded' => false, // true : radio, false : select
))
```
Ne pas oublier la ligne 
```php 
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
```
Pour accéder aux jointures, dans les controllers : 
```php
// ...
$typeName = [];
foreach($animes as $anime) {
    $typeName[$anime->getId()] = $anime->getType()->getName();
}
return $this->render('anime/index.html.twig', array(
    // ...
    typeName' => $typeName,
));
```

##### FOS User Bundle
Routes d'accès : 
* /login
* /register

Créer un super user admin : `sf fos:user:create admin admin@admin.com admin --super-admin`

=> Besoin d'être admin pour accéder au backoffice (au chemin /admin)


Toutes les entities peuvent se gérer par les admins dans le back-office. Les fonctions de CRUD et pages liés qui avaient été générées à la base ont été commentées et sont normalement pas nécessaires puisqu'accessbiles dans le back-office.

##### Optimization tools

* Lancer PHPMetrics `php phpmetrics.phar --report-html=reportMetrics.html src/AnimeBundle`
* Lancer PHPcs `phpcs --standard=psr2 src/....path`
