var queryParams = function (params) {
      var param = {
          pageIndex: Math.ceil(params.offset / params.limit) + 1,
          pageSize: params.limit,
          order: params.order,
          ordername: params.sort,
          startDateTime: $("#dateSearch .startDate").val(),
          endDateTime: $("#dateSearch .endDate").val(),
          search: $("#dateSearch .imuserid").val()
      };
      return param;
  }
 
  var responseHandler = function (e) {
      console.log(e);
      if (e.data && e.data.length > 0) {
          return { "rows": e.data, "total": e.count };
      }
      else {
          return { "rows": [], "total": 0 };
      }
      
  }
  var uidHandle = function (res) {
      var html = "<a href='#'>"+ res + "</a>";
      return html;
  }
  var operateFormatter = function (value, row, index) {//����Ĳ���
      return [
          '<button class="btn btn-info btn-sm rightSize detailBtn" type="button"><i class="fa fa-paste"></i> ����</button>',
          '<button class="btn btn-danger btn-sm rightSize packageBtn" type="button"><i class="fa fa-envelope"></i> ֪ͨ</button>'
      ].join('');
  }
  self.dataInit = function (name) {
      var url, columns, tableName;
      switch (name) {
          case 'loginLogTab':
              tableName = "loginLog-table";
              columns = [
                  {
                      checkbox: true
                  },
                  {
                      field: 'uid',
                      title: '�û����',
                      align: 'center',
                      formatter: uidHandle,//�Զ��巽������uid��ת����
                      width:300
                  }, {
                      field: 'name',
                      title: '����',
                      align: 'center',
                      sortable:false   //���в���������
                  }, {
                      field: 'sex',
                      title: '�Ա�',
                      align: 'center'
                  }, {
                      field: 'age',
                      title: '����',
                      align: 'center',
                      sortable: true,
                      clickToSelect: false,
                      sortName: "age",
                      order:"asc"
                  }, {
                      field: 'area',
                      title: '�������ڵ�',
                      align: 'left',
                      halign:'center' //���ñ�ͷ�о��ж���
                  }, {
                      field: 'loginWay',
                      title: '��¼��ʽ',
                      align: 'center'
                  }, {
                      field: 'status',
                      title: '״̬',
                      align: 'center'
                  },{
                      field: 'createTime',
                      title: '��¼ʱ��',
                      align: 'center',
                      width: 90
                  }, {
                      field: 'orderService',
                      title: '�������',
                      align: 'center'
                  }, {
                      field: 'connectorIP',
                      title: '������IP',
                      align: 'center'
                  }, {
                      field: 'connectorPort',
                      title: '�������˿�',
                      align: 'center'
                  }, {
                      field: 'operate',
                      title: '����',
                      align: 'center',
                      valign: 'middle',
                      formatter: operateFormatter //�Զ��巽������Ӳ�����ť
                  }
              ];
              break;
          case 'receiveLogTab':
              //ʡ��
              break;
          case 'socketInputTab':
              //ʡ��
              break;
          case 'socketOutputTab':
              //ʡ��
              break;
      }
      $('#' + tableName).empty();
      $('#' + tableName).bootstrapTable('destroy').bootstrapTable({
          url: '../data/login_info2.json',   //urlһ���������̨��url��ַ,����ajax��ȡ���ݡ��˴����ñ��ص�json�����������
          method: "get",                     //ʹ��get���󵽷�������ȡ���� 
          dataType: "json",
          contentType: 'application/json,charset=utf-8',
          toolbar: "#toolbar",                //һ��jQuery ѡ������ָ���Զ����toolbar ����:#toolbar, .toolbar.
          uniqueId: "id",                    //ÿһ�е�Ψһ��ʶ��һ��Ϊ������
          height: document.body.clientHeight-165,   //��̬��ȡ�߶�ֵ������ʹ�������Ӧҳ��
          cache: false,                       // ������
          striped: true,                      // ���м���
          queryParamsType: "limit",           //����Ϊ"undefined",���Ի�ȡpageNumber��pageSize��searchText��sortName��sortOrder  
                                              //����Ϊ"limit",���� RESTFul ��ʽ�Ĳ���,���Ի�ȡlimit, offset, search, sort, order  
          queryParams: queryParams,
          sidePagination: "server",           //��ҳ��ʽ��client�ͻ��˷�ҳ��server����˷�ҳ��*��
         // sortable: true,                     //�Ƿ���������;��ζ��������񶼻�����
          sortName: 'uid',                    // ����Ĭ������Ϊ name
          sortOrder: "asc",                   //����ʽ
          pagination: true,                   //�Ƿ���ʾ��ҳ��*��
          search: true,                       //�Ƿ���ʾ����������������ǿͻ������������������ˣ����ԣ����˸о����岻��
          strictSearch: true,
          showColumns: true,                  //�Ƿ���ʾ���е���
          showRefresh: true,                  //�Ƿ���ʾˢ�°�ť
          showToggle:true,                    //�Ƿ���ʾ��ϸ��ͼ���б���ͼ
          clickToSelect: true,                //�Ƿ����õ��ѡ����
          minimumCountColumns: 2,          //������������� clickToSelect: true, //�Ƿ����õ��ѡ����
          pageNumber: 1,                   //��ʼ�����ص�һҳ��Ĭ�ϵ�һҳ
          pageSize: 10,                    //ÿҳ�ļ�¼������*��
          pageList: [10, 25, 50, 100],     //�ɹ�ѡ���ÿҳ��������*��
          paginationPreText: "Previous",
          paginationNextText: "Next",
          paginationFirstText: "First",
          paginationLastText: "Last",
          responseHandler: responseHandler,
          columns: columns,
          onLoadSuccess: function (data) { //���سɹ�ʱִ��
              console.log(data);
          },
          onLoadError: function (res) { //����ʧ��ʱִ��
              console.log(res);
          }
      });
  }