<?php

namespace AnimeBundle\Admin;

use Sonata\AdminBundle\Admin\AbstractAdmin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;

class UserHasEpisodesAdmin extends AbstractAdmin
{
    protected function configureFormFields(FormMapper $formMapper)
    {
        $formMapper
            ->add('episode', 'sonata_type_model', array(
                'class' => 'AnimeBundle\Entity\Episode',
                'property' => 'name',
            ))
            ->add('user', 'sonata_type_model', array(
                'class' => 'AnimeBundle\Entity\User',
                'property' => 'username',
            ))
            ->add('viewed')
        ;
    }

    protected function configureDatagridFilters(DatagridMapper $datagridMapper)
    {
        $datagridMapper
            ->add('episode', null, array(), EntityType::class, array(
                'class'    => 'AnimeBundle\Entity\Episode',
                'choice_label' => 'name',
            ))
            ->add('user', null, array(), EntityType::class, array(
                'class'    => 'AnimeBundle\Entity\User',
                'choice_label' => 'username',
            ))
            ->add('viewed')
        ;
    }

    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
            ->add('episode.name')
            ->add('user.username')
            ->add('viewed')
        ;
    }

    public function toString($object)
    {
        return $object instanceof UserHasEpisodes
            ? $object->getTitle()
            : 'User Has Episodes'; // shown in the breadcrumb on the create view
    }
}