package com.algaworks.algafood.infrastructure.repository;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.algaworks.algafood.domain.model.Cidade;
import com.algaworks.algafood.domain.repository.CidadeRepository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

@Repository
public class CidadeRepositoryImpl implements CidadeRepository {

    @PersistenceContext
    private EntityManager manager;
    
    @Override
    public List<Cidade> listar() {
        return manager.createQuery("from Cidade", Cidade.class)
                .getResultList();
    }
    
    @Override
    public Cidade buscar(Long id) {
        return manager.find(Cidade.class, id);
    }
    
    @Transactional
    @Override
    public Cidade salvar(Cidade cidade) {
        return manager.merge(cidade);
    }
    
    @Transactional
    @Override
    public void remover(Long id) {
    	Cidade cidadeId = buscar(id);
        manager.remove(cidadeId);
    }
}