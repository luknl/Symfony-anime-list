<?php

namespace AnimeBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * EpisodeScore
 *
 * @ORM\Table(name="episode_score")
 * @ORM\Entity(repositoryClass="AnimeBundle\Repository\EpisodeScoreRepository")
 */
class EpisodeScore
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
     * @var int
     *
     * @ORM\Column(name="value", type="integer")
     */
    private $value;


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
     * @return EpisodeScore
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
     * @return EpisodeScore
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
     * Set value
     *
     * @param integer $value
     *
     * @return EpisodeScore
     */
    public function setValue($value)
    {
        $this->value = $value;

        return $this;
    }

    /**
     * Get value
     *
     * @return int
     */
    public function getValue()
    {
        return $this->value;
    }
}
