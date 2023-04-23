package com.algaworks.algafood.domain.exception;

public class EntidadeNaoEncontradaException extends RuntimeException{

	private static final long serialVersionUID = 5628069432500098461L;
	
	public EntidadeNaoEncontradaException(String mensagem) {
		super(mensagem);
	}
}
