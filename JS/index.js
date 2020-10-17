var categoria = "todos"

function exibir_categoria(categ) {
    let elementos = document.getElementsByClassName('box_produto');
    for (i = 0; i < elementos.length; i++) {
        if (elementos[i].id == categ) {
            elementos[i].style = "display:inline-block"
        } else {
            elementos[i].style = "display:none"
        }
    }
    categoria = categ
}

function exibir_todos() {
    let elementos = document.getElementsByClassName('box_produto');
    for (i = 0; i < elementos.length; i++) {
        elementos[i].style.display = "inline-block"
    }
    categoria = "todos"
}

function destaque(div) {
    let imgInside = div.getElementsByTagName("img")[0]

    if (imgInside.style.width == "240px") {
        imgInside.style.width = "120px"
        div.style.fontWeight = 400
    } else {
        imgInside.style.width = "240px"
        div.style.fontWeight = 900
    }
}





