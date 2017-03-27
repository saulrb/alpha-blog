$ ->    
  $('#articles_table').DataTable    
    stateSave: true
    stateDuration: -1
    lengthMenu: [ [10, 20, 40, -1], [10, 20, 40, "All"] ]
    searchDelay: 550
    #dom: 'Rlfrtip'
    columnDefs: [{ 
      orderable: false
      targets: [0 , 4]
      columns:[{ "width": "40%" },
             { "width": "40%" },
             { "width": "7%" },
             { "width": "7%" },
             { "width": "7%" }]
    }]
