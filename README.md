Symfony Anime List
========================

> This is a school project using the PHP Framework Symfony as beginners. 

The concept is a tool where you can find Animes. You can then rate or review them. See all the episodes related and a schedule of the broadcast days of each one. All this to keep track of all your favorite animes ... (original concept : [MyAnimeList](https://myanimelist.net/))


## Getting Started

* Clone the project `git clone https://github.com/luknl/Symfony-anime-list.git`
* Run composer `composer install`
* Create the database `sf doctrine:database:create`

> Import *Neussaipa.sql* in database in phpMyAdmin

* Run the server `sf server:run`

> Login with *pseudo: admin* and *password: admin* to have access to all functionnalities


## Configs
This project uses the framework *Symfony 3.2* for PHP

The following Bundles are used : 
* FOS User Bundle ([documentation](http://symfony.com/doc/current/bundles/FOSUserBundle/index.html))
* Sonata Admin Bundle ([documentation](https://symfony.com/doc/current/bundles/SonataAdminBundle/index.html))
