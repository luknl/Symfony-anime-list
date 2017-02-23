<?php

namespace AnimeBundle\Admin;

use Sonata\AdminBundle\Admin\AbstractAdmin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;

/**
 * Class UserHasAnimesAdmin
 * @package AnimeBundle\Admin
 */
class UserHasAnimesAdmin extends AbstractAdmin
{
    /**
     * @param FormMapper $formMapper
     */
    protected function configureFormFields(FormMapper $formMapper)
    {
        $formMapper
            ->add('anime', 'sonata_type_model', array(
                'class' => 'AnimeBundle\Entity\Anime',
                'property' => 'name',
            ))
            ->add('user', 'sonata_type_model', array(
                'class' => 'AnimeBundle\Entity\User',
                'property' => 'username',
            ))
            ->add('favori')
        ;
    }

    /**
     * @param DatagridMapper $datagridMapper
     */
    protected function configureDatagridFilters(DatagridMapper $datagridMapper)
    {
        $datagridMapper
            ->add('anime', null, array(), EntityType::class, array(
                'class'    => 'AnimeBundle\Entity\Anime',
                'choice_label' => 'name',
            ))
            ->add('user', null, array(), EntityType::class, array(
                'class'    => 'AnimeBundle\Entity\User',
                'choice_label' => 'username',
            ))
            ->add('favori')
        ;
    }

    /**
     * @param ListMapper $listMapper
     */
    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
            ->add('anime.name')
            ->add('user.username')
            ->add('favori')
        ;
    }

    /**
     * @param mixed $object
     * @return string
     */
    public function toString($object)
    {
        return $object instanceof UserHasAnimes
            ? $object->getTitle()
            : 'User Has Animes'; // shown in the breadcrumb on the create view
    }
}
