<?php

namespace AnimeBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;

class EpisodeType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('name')
            ->add('duration')
            ->add('description')
            ->add('aired', DateTimeType::class, array(
                'widget' => 'single_text',
                'years' => range(1920, 2050),
            ))
            ->add('anime', EntityType::class, array(
                // query choices from this entity
                'class' => 'AnimeBundle:Anime',
                // use the User.username property as the visible option string
                'choice_label' => 'name',
                'multiple' => false,
                'expanded' => false, // true : radio, false : select
            ))
        ;
    }
    
    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'AnimeBundle\Entity\Episode'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'animebundle_episode';
    }
}
