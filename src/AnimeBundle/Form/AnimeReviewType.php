<?php

namespace AnimeBundle\Form;

use AnimeBundle\Repository\AnimeRepository;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;

class AnimeReviewType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $anime = $options['anime'];

        $builder
            ->add('user')
            ->add('anime', EntityType::class, array(
                // query choices from this entity
                'class' => 'AnimeBundle:Anime',
                // use the User.username property as the visible option string
                'choice_label' => 'name',
                'multiple' => false,
                'expanded' => false, // true : radio, false : select
                'query_builder' => function (AnimeRepository $repository) use ($anime) {
                    return $repository->createQueryBuilder('w')
                        ->where('w.id = :anime')
                        ->setParameter('anime', $anime);
                }
            ))
            ->add('value', 'textarea')
        ;
    }
    
    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'AnimeBundle\Entity\AnimeReview',
            'anime' => null,
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'animebundle_animereview';
    }
}
