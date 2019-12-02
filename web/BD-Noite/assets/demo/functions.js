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
    return values;
}

function get_first_letter(word) {
    var matches = word.match(/\b(\w)/g);
    var acronym = matches.join('');
    return acronym;
}

function setTooltip(id,response,field){
    setTimeout(function(){
        $("#"+id).find("svg").find("g").next().find("g").find("line").each(function(){
            $(this).attr("title",$(this).attr("ct:value"));
            $(this).tooltip();
            $(this).css("cursor","context-menu");
        });
        $("#"+id).find("svg").find("g").next().next().find("foreignObject").each(function(){
            for(i=0;i<response.length;i++){
                if($(this).text() == get_first_letter(response[i][field])){
                    $(this).attr("title",response[i][field]);
                    $(this).tooltip();
                    $(this).css("cursor","context-menu");
                }
            }
        });
    },1000);
}

function create_table(nome_consulta, id_table, titulo_consulta, categoria) {
    var html = '<div class="col-md-12"><div class="card card-plain"><div class="card-header card-header-primary"><h4 class="card-title">' + titulo_consulta + '</h4><p class="card-category">' + categoria + '</p></div><div class="card-body"> <div class="table-responsive"><table class="table table-hover" id = "' + id_table + '">';
    $.ajax({
        type: "GET",
        url: "../php/consultas.php",
        data: "consulta=" + nome_consulta,
        success: function(response) {
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

function log_out() {
    //TODO Matar a sessão
    alert("Usuário deslogado");
    window.location.href = "../pages/Login/";
}

function chart(id,intervalA,intervalB,field_tooltip,chartType,consulta,color_chart,title,subTitle){
    var nome_consulta = consulta;
    var text_btn = "";
    if (chartType == "line"){
        text_btn = "bar";
    }
    else{
        text_btn = "line";
    }
    var html = '<div class="col-md-4"><div class="card card-chart"> <div class="card-header card-header-'+color_chart+'"> <div class="ct-chart" id="'+id+'"></div></div><div class="card-body"><div style = "float: right;"><button type="button" onclick=\'chart("'+id+'",'+intervalA+','+intervalB+',"'+field_tooltip+'",this.textContent,"'+consulta+'","'+color_chart+'","'+title+'","'+subTitle+'")\' class="btn btn-'+color_chart+' btn_toogle">'+text_btn+'</button></div><h4 class="card-title">'+title+'</h4><p class="card-category"></div><div class="card-footer"><div class="stats"><i class="material-icons">access_time</i> '+subTitle+'</div></div></div></div>';
    $.ajax({
        type: "GET",
        url: "../php/consultas.php",
        data: "consulta=" + nome_consulta,
        success: function(response) {
            cabecalho = get_keys(response);
            labels = [];
            series = [];
            for (i = 0; i < response.length; i++) {
                if (field_tooltip != ""){
                    labels.push(get_first_letter(response[i][cabecalho[0]]));
                }
                else{
                    labels.push(response[i][cabecalho[0]]);
                }
                series.push(response[i][cabecalho[1]])
            }
            dataCompletedTasksChart = {
                labels: labels,
                series: [
                    series
                ]
            };

            optionsCompletedTasksChart = {
                lineSmooth: Chartist.Interpolation.cardinal({
                    tension: 0
                }),
                low: intervalA,
                high: intervalB,
                chartPadding: {
                    top: 0,
                    right: 0,
                    bottom: 0,
                    left: 0
                }
            }
            if($("#"+id).attr("id") === undefined){
                $("#charts").append(html);
            }
            if(chartType == "line"){
                var completedTasksChart = new Chartist.Line('#'+id, dataCompletedTasksChart, optionsCompletedTasksChart);
            }
            else{
                var completedTasksChart = new Chartist.Bar('#'+id, dataCompletedTasksChart, optionsCompletedTasksChart);
            }
            
            md.startAnimationForLineChart(completedTasksChart);
            setTooltip(id,response,field_tooltip);
        }
    });
}

function media_apuracao(id) {
    var nome_consulta = "consulta_media_preco";
    $.ajax({
        type: "GET",
        url: "../php/consultas.php",
        data: "consulta=" + nome_consulta,
        success: function(response) {
            value = parseFloat(response[0]["Media"]);
            $("#" + id).text("$" + value.toFixed(2));
        }
    });
}