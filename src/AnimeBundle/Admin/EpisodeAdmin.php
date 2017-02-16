<?php

namespace AnimeBundle\Admin;

use Sonata\AdminBundle\Admin\AbstractAdmin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Form\FormMapper;

class EpisodeAdmin extends AbstractAdmin
{
    protected function configureFormFields(FormMapper $formMapper)
    {
        $formMapper
            ->add('name', 'text')
            ->add('anime', 'sonata_type_model', array(
                'class' => 'AnimeBundle\Entity\Anime',
                'property' => 'name',
            ))
            ->add('duration')
            ->add('description')
            ->add('aired')
        ;
    }

    protected function configureDatagridFilters(DatagridMapper $datagridMapper)
    {
        $datagridMapper->add('name');
    }

    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
            ->addIdentifier('name')
            ->add('anime.name')
        ;
    }

    public function toString($object)
    {
        return $object instanceof EpisodeGenre
            ? $object->getTitle()
            : 'Episode'; // shown in the breadcrumb on the create view
    }
}