import SwiftUI

struct LibroCellView: View {
    var libro: Libro

    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 100, height: 150)
                .foregroundColor(.gray)
                .cornerRadius(10)
            Text(libro.titulo)
                .font(.headline)
                .lineLimit(1)
                .padding(.top, 5)
        }
        .padding()
    }
}

struct LibroCellView_Previews: PreviewProvider {
    static var previews: some View {
        LibroCellView(libro: Libro(id: 1, titulo: "Sample Book", autor: "Author", numeroPaginas: 100, sinopsis: "Synopsis", editorial: "Editorial", genero: "Genre", foto: "", prestado: false, filtro: [1], usuario: ModelUser2(id: 1)))
    }
}
