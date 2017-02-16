<?php

namespace AnimeBundle\Admin;

use Sonata\AdminBundle\Admin\AbstractAdmin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;

class AnimeReviewAdmin extends AbstractAdmin
{
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
            ->add('value')
        ;
    }

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
        ;
    }

    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
            ->addIdentifier('value')
            ->add('anime.name')
            ->add('user.username')
            ->add('created')
        ;
    }

    public function toString($object)
    {
        return $object instanceof AnimeReview
            ? $object->getTitle()
            : 'Anime Review'; // shown in the breadcrumb on the create view
    }
}