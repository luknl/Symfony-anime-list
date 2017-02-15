<?php

namespace AnimeBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * UserHasEpisodes
 *
 * @ORM\Table(name="user_has_episodes")
 * @ORM\Entity(repositoryClass="AnimeBundle\Repository\UserHasEpisodesRepository")
 */
class UserHasEpisodes
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity="User")
     * @ORM\JoinColumn(name="user_id", referencedColumnName="id", nullable=false)
     */
    private $user;

    /**
     * @ORM\ManyToOne(targetEntity="Episode")
     * @ORM\JoinColumn(name="episode_id", referencedColumnName="id", nullable=false)
     */
    private $episode;

    /**
     * @var bool
     *
     * @ORM\Column(name="viewed", type="boolean")
     */
    private $viewed;


    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set user
     *
     * @param \stdClass $user
     *
     * @return UserHasEpisodes
     */
    public function setUser($user)
    {
        $this->user = $user;

        return $this;
    }

    /**
     * Get user
     *
     * @return \stdClass
     */
    public function getUser()
    {
        return $this->user;
    }

    /**
     * Set episode
     *
     * @param \stdClass $episode
     *
     * @return UserHasEpisodes
     */
    public function setEpisode($episode)
    {
        $this->episode = $episode;

        return $this;
    }

    /**
     * Get episode
     *
     * @return \stdClass
     */
    public function getEpisode()
    {
        return $this->episode;
    }

    /**
     * Set viewed
     *
     * @param boolean $viewed
     *
     * @return UserHasEpisodes
     */
    public function setViewed($viewed)
    {
        $this->viewed = $viewed;

        return $this;
    }

    /**
     * Get viewed
     *
     * @return bool
     */
    public function getViewed()
    {
        return $this->viewed;
    }
}

