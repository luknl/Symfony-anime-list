<?php

namespace AnimeBundle\Admin;

use Sonata\AdminBundle\Admin\AbstractAdmin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;

/**
 * Class EpisodeAdmin
 * @package AnimeBundle\Admin
 */
class EpisodeAdmin extends AbstractAdmin
{
    /**
     * @param FormMapper $formMapper
     */
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
            ->add('aired', DateTimeType::class, array(
                'years' => range(1920, 2050),
            ))
        ;
    }

    /**
     * @param DatagridMapper $datagridMapper
     */
    protected function configureDatagridFilters(DatagridMapper $datagridMapper)
    {
        $datagridMapper->add('name');
    }

    /**
     * @param ListMapper $listMapper
     */
    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
            ->addIdentifier('name')
            ->add('anime.name')
        ;
    }

    /**
     * @param mixed $object
     * @return string
     */
    public function toString($object)
    {
        return $object instanceof EpisodeGenre
            ? $object->getTitle()
            : 'Episode'; // shown in the breadcrumb on the create view
    }
}
