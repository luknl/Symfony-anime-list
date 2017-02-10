<?php

namespace AnimeBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Anime
 *
 * @ORM\Table(name="anime")
 * @ORM\Entity(repositoryClass="AnimeBundle\Repository\AnimeRepository")
 */
class Anime
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
     * @var string
     *
     * @ORM\Column(name="name", type="string", length=255)
     */
    private $name;

    /**
     * @var string
     *
     * @ORM\Column(name="type", type="string", length=255)
     */
    private $type;

    /**
     * @var int
     *
     * @ORM\Column(name="number_of_episodes", type="integer")
     */
    private $numberOfEpisodes;

    /**
     * @var string
     *
     * @ORM\Column(name="status", type="string", length=255)
     */
    private $status;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="aired", type="datetime")
     */
    private $aired;

    /**
     * @var string
     *
     * @ORM\Column(name="producers", type="string", length=255)
     */
    private $producers;

    /**
     * @var string
     *
     * @ORM\Column(name="licensors", type="string", length=255)
     */
    private $licensors;

    /**
     * @var string
     *
     * @ORM\Column(name="studios", type="string", length=255)
     */
    private $studios;

    /**
     * @var string
     *
     * @ORM\Column(name="source", type="string", length=255)
     */
    private $source;

    /**
     * @var string
     *
     * @ORM\Column(name="genre", type="string", length=255)
     */
    private $genre;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="duration", type="time")
     */
    private $duration;

    /**
     * @var string
     *
     * @ORM\Column(name="rating", type="string", length=255)
     */
    private $rating;

    /**
     * @var string
     *
     * @ORM\Column(name="synopsis", type="text")
     */
    private $synopsis;

    /**
     * @var string
     *
     * @ORM\Column(name="background", type="text")
     */
    private $background;


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
     * Set name
     *
     * @param string $name
     *
     * @return Anime
     */
    public function setName($name)
    {
        $this->name = $name;

        return $this;
    }

    /**
     * Get name
     *
     * @return string
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * Set type
     *
     * @param string $type
     *
     * @return Anime
     */
    public function setType($type)
    {
        $this->type = $type;

        return $this;
    }

    /**
     * Get type
     *
     * @return string
     */
    public function getType()
    {
        return $this->type;
    }

    /**
     * Set numberOfEpisodes
     *
     * @param integer $numberOfEpisodes
     *
     * @return Anime
     */
    public function setNumberOfEpisodes($numberOfEpisodes)
    {
        $this->numberOfEpisodes = $numberOfEpisodes;

        return $this;
    }

    /**
     * Get numberOfEpisodes
     *
     * @return int
     */
    public function getNumberOfEpisodes()
    {
        return $this->numberOfEpisodes;
    }

    /**
     * Set status
     *
     * @param string $status
     *
     * @return Anime
     */
    public function setStatus($status)
    {
        $this->status = $status;

        return $this;
    }

    /**
     * Get status
     *
     * @return string
     */
    public function getStatus()
    {
        return $this->status;
    }

    /**
     * Set aired
     *
     * @param \DateTime $aired
     *
     * @return Anime
     */
    public function setAired($aired)
    {
        $this->aired = $aired;

        return $this;
    }

    /**
     * Get aired
     *
     * @return \DateTime
     */
    public function getAired()
    {
        return $this->aired;
    }

    /**
     * Set producers
     *
     * @param string $producers
     *
     * @return Anime
     */
    public function setProducers($producers)
    {
        $this->producers = $producers;

        return $this;
    }

    /**
     * Get producers
     *
     * @return string
     */
    public function getProducers()
    {
        return $this->producers;
    }

    /**
     * Set licensors
     *
     * @param string $licensors
     *
     * @return Anime
     */
    public function setLicensors($licensors)
    {
        $this->licensors = $licensors;

        return $this;
    }

    /**
     * Get licensors
     *
     * @return string
     */
    public function getLicensors()
    {
        return $this->licensors;
    }

    /**
     * Set studios
     *
     * @param string $studios
     *
     * @return Anime
     */
    public function setStudios($studios)
    {
        $this->studios = $studios;

        return $this;
    }

    /**
     * Get studios
     *
     * @return string
     */
    public function getStudios()
    {
        return $this->studios;
    }

    /**
     * Set source
     *
     * @param string $source
     *
     * @return Anime
     */
    public function setSource($source)
    {
        $this->source = $source;

        return $this;
    }

    /**
     * Get source
     *
     * @return string
     */
    public function getSource()
    {
        return $this->source;
    }

    /**
     * Set genre
     *
     * @param string $genre
     *
     * @return Anime
     */
    public function setGenre($genre)
    {
        $this->genre = $genre;

        return $this;
    }

    /**
     * Get genre
     *
     * @return string
     */
    public function getGenre()
    {
        return $this->genre;
    }

    /**
     * Set duration
     *
     * @param \DateTime $duration
     *
     * @return Anime
     */
    public function setDuration($duration)
    {
        $this->duration = $duration;

        return $this;
    }

    /**
     * Get duration
     *
     * @return \DateTime
     */
    public function getDuration()
    {
        return $this->duration;
    }

    /**
     * Set rating
     *
     * @param string $rating
     *
     * @return Anime
     */
    public function setRating($rating)
    {
        $this->rating = $rating;

        return $this;
    }

    /**
     * Get rating
     *
     * @return string
     */
    public function getRating()
    {
        return $this->rating;
    }

    /**
     * Set synopsis
     *
     * @param string $synopsis
     *
     * @return Anime
     */
    public function setSynopsis($synopsis)
    {
        $this->synopsis = $synopsis;

        return $this;
    }

    /**
     * Get synopsis
     *
     * @return string
     */
    public function getSynopsis()
    {
        return $this->synopsis;
    }

    /**
     * Set background
     *
     * @param string $background
     *
     * @return Anime
     */
    public function setBackground($background)
    {
        $this->background = $background;

        return $this;
    }

    /**
     * Get background
     *
     * @return string
     */
    public function getBackground()
    {
        return $this->background;
    }
}

