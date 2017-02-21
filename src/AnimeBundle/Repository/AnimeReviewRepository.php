<?php

namespace AnimeBundle\Repository;

/**
 * AnimeReviewRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class AnimeReviewRepository extends \Doctrine\ORM\EntityRepository
{
    public function findAllById($id)  {
        return $this->getEntityManager()
            ->createQuery('SELECT p FROM AnimeBundle:AnimeReview p WHERE p.anime = :id ORDER BY p.created ASC'  )
            ->setParameter('id', $id)
            ->getResult();
    }
}
