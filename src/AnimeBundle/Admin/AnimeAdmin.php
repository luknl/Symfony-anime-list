<?php

namespace AnimeBundle\Admin;

use Sonata\AdminBundle\Admin\AbstractAdmin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;

class AnimeAdmin extends AbstractAdmin
{
    protected function configureFormFields(FormMapper $formMapper)
    {
        $formMapper
            ->with('Basic infos', array('class' => 'col-md-6'))
                ->add('name', 'text')
                ->add('type', 'sonata_type_model', array(
                    'class' => 'AnimeBundle\Entity\AnimeType',
                    'property' => 'name',
                ))
                ->add('genre', 'sonata_type_model', array(
                    'class' => 'AnimeBundle\Entity\AnimeGenre',
                    'property' => 'name',
                ))
                ->add('synopsis', 'textarea')
                ->add('picture')
            ->end()
            ->with('Additional Infos', array('class' => 'col-md-6'))
                ->add('status')
                ->add('aired', DateTimeType::class, array(
                    'years' => range(1920, 2050),
                ))
                ->add('producers')
                ->add('licensors')
                ->add('studios')
                ->add('source')
                ->add('duration')
                ->add('background')
                ->add('rating')
            ->end()
        ;
    }

    protected function configureDatagridFilters(DatagridMapper $datagridMapper)
    {
        $datagridMapper
            ->add('type', null, array(), EntityType::class, array(
                'class'    => 'AnimeBundle\Entity\AnimeType',
                'choice_label' => 'name',
            ))
            ->add('genre', null, array(), EntityType::class, array(
                'class'    => 'AnimeBundle\Entity\AnimeGenre',
                'choice_label' => 'name',
            ))
        ;
    }

    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
            ->addIdentifier('name')
            ->add('type.name')
            ->add('genre.name')
        ;
    }

    public function toString($object)
    {
        return $object instanceof Anime
            ? $object->getTitle()
            : 'Anime'; // shown in the breadcrumb on the create view
    }
}
