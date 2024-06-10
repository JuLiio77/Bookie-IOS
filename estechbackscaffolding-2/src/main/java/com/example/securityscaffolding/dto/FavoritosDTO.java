package com.example.securityscaffolding.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Builder
public class FavoritosDTO {

    private String titulo;
    private String imagen;
    private Long libroId;
    private Long idFavorito;
}
