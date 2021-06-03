<?php
namespace Symfony\Service;

class Service {

    // no

    /**
     * @var Services
     */
    protected $services;

    public function __construct(Services $services) {
        $this->services = $services;
        $this->afterConstruct();
    }

    protected function afterConstruct() {}
}