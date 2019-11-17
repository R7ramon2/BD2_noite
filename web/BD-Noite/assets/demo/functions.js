function get_keys(jsonData) {
    keys = [];
    for (var obj in jsonData) {
        if (jsonData.hasOwnProperty(obj)) {
            for (var prop in jsonData[obj]) {
                if (jsonData[obj].hasOwnProperty(prop)) {
                    keys.push(prop);
                }
            }
        }
    }
    newKeys = keys.filter(function(este, i) {
        return keys.indexOf(este) === i;
    });
    return newKeys;
}

function get_values(jsonData) {
    values = [];
    for (var obj in jsonData) {
        if (jsonData.hasOwnProperty(obj)) {
            for (var prop in jsonData[obj]) {
                if (jsonData[obj].hasOwnProperty(prop)) {
                    values.push(jsonData[obj][prop]);
                }
            }
        }
    }
    console.log(values);
    return values;
}



function create_table(nome_consulta, id_table, titulo_consulta, categoria) {
    var html = '<div class="col-md-12"><div class="card card-plain"><div class="card-header card-header-primary"><h4 class="card-title">' + titulo_consulta + '</h4><p class="card-category">' + categoria + '</p></div><div class="card-body"> <div class="table-responsive"><table class="table table-hover" id = "' + id_table + '">';
    $.ajax({
        type: "GET",
        url: "../php/consultas.php",
        data: "consulta=" + nome_consulta,
        success: function(response) {
            console.log(response);
            cabecalho = get_keys(response);
            id = 1;
            thead = "<thead class=\"text-primary cabecalho\"><th><b>ID</b> <i class=\"fa fa-fw fa-sort\"></i></th>";
            for (i = 0; i < cabecalho.length; i++) {
                id++;
                thead += "<th><b>" + cabecalho[i] + "</b> <i class=\"fa fa-fw fa-sort\"></i></th>";
            }
            thead += "</thead>";
            tbody = "<tbody>";
            for (i = 0; i < response.length; i++) {
                id = i + 1;
                tbody += "<tr class = \"" + nome_consulta + "_item\"><td>" + id + "</td>";
                for (j = 0; j < Object.keys(response[i]).length; j++) {
                    tbody += "<td>" + response[i][Object.keys(response[i])[j]] + "</td>";
                }
                tbody += "</tr>"
            }
            tbody += "</tbody></table></div></div></div></div>";
            aux = thead + tbody;
            html += aux;

            $("#tabelas").append(html);
            $("#" + id_table).DataTable({
                "bLengthChange": false,
                "scrollX": false,
                "lengthMenu": [
                    [5]
                ],
                "language": {
                    "lengthMenu": "Exibir _MENU_ registros por página",
                    "zeroRecords": "Nenhum registro encontrado",
                    "info": "Página _PAGE_ de _PAGES_",
                    "infoEmpty": "Nenhum registro encontrado",
                    "infoFiltered": "(Filtrado de _MAX_ registros)",
                    "search": "Pesquisar",
                    "paginate": {
                        "previous": "Anterior",
                        "next": "Próximo"
                    }
                }
            });

        },
        error: function(r) {
            alert("Erro ao consultar " + nome_consulta + "\nCod:" + r.status);
        }
    });
}

function log_out(){
    //TODO Matar a sessão
    alert("Usuário deslogado");
    window.location.href = "../pages/Login/";
}