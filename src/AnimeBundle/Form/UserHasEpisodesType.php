<?php

namespace AnimeBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;

class UserHasEpisodesType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('user')
            ->add('episode', EntityType::class, array(
                // query choices from this entity
                'class' => 'AnimeBundle:Episode',
                // use the User.username property as the visible option string
                'choice_label' => 'name',
                'multiple' => false,
                'expanded' => false, // true : radio, false : select
            ))
            ->add('viewed')
        ;
    }
    
    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'AnimeBundle\Entity\UserHasEpisodes'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'animebundle_userhasepisodes';
    }
}
