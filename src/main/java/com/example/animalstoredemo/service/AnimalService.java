package com.example.animalstoredemo.service;


import com.example.animalstoredemo.entity.Animal;
import com.example.animalstoredemo.repo.AnimalRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class AnimalService {
    private AnimalRepo animalRepo;
    @Autowired
    public AnimalService(AnimalRepo animalRepo) {
        this.animalRepo = animalRepo;
    }

    public void saveAnimal(final Animal animal) {
        animalRepo.save(animal);
    }

    public List<Animal> getAnimal() {
        return animalRepo.findAll();
    }

    public Optional<Animal> getAnimalById(final long id) {
        return animalRepo.findById(id);
    }

    public void deleteAnimal(final Animal animal) {
        animalRepo.delete(animal);
    }

    public Page<Animal> getAnimal(int page, int pageSize) {
        Pageable pageable = PageRequest.of(page, pageSize);
        return animalRepo.findAll(pageable);
    }



}
