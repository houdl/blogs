
$(function() {
  if ($('.my_editor').length > 0){
    KindEditor.create('.my_editor', {
      uploadJson: '/kindeditor/upload',
      allowFileManager: true,
      fileManagerJson: '/kindeditor/filemanager',
      langType: 'zh_CN',
      resizeType: 0,
      //fillDescAfterUploadImage: true,
      //newlineTag: 'br',
      height: '400px',
      width: '100%',
      imageTabIndex: 1,
      filterMode: true,
      autoHeightMode: true,
      afterCreate: function(){this.sync();},
      afterBlur: function(){this.sync();},
      items : [
        //'source', 'formatblock', 'fontname', 'fontsize', '|',
        'formatblock', 'fontname', 'fontsize', '|',
        'forecolor', 'hilitecolor', 'bold', 'italic', 'underline', 'strikethrough', 'lineheight', 'removeformat', '|',
        'justifyleft', 'justifycenter', 'justifyright', 'justifyfull', 'insertorderedlist', 'insertunorderedlist', '|',
        'clearhtml', 'quickformat', 'preview']
        //'image', 'link', 'unlink',
        //'image', 'multiimage', 'table', 'link', 'unlink', 'hr', 'clearhtml', 'quickformat', 'preview']
    });
  }

  if ($('.my_full_editor').length > 0){
    KindEditor.create('.my_full_editor', {
      uploadJson: '/kindeditor/upload',
      allowFileManager: true,
      fileManagerJson: '/kindeditor/filemanager',
      langType: 'zh_CN',
      resizeType: 0,
      //fillDescAfterUploadImage: true,
      //newlineTag: 'br',
      height: '400px',
      width: '100%',
      imageTabIndex: 1,
      filterMode: true,
      autoHeightMode: true,
      afterCreate: function(){this.sync();},
      afterBlur: function(){this.sync();},
      items : [
        //'source', 'formatblock', 'fontname', 'fontsize', '|',
        'formatblock', 'fontname', 'fontsize', '|',
        'forecolor', 'hilitecolor', 'bold', 'italic', 'underline', 'strikethrough', 'lineheight', 'removeformat', '|',
        'justifyleft', 'justifycenter', 'justifyright', 'justifyfull', 'insertorderedlist', 'insertunorderedlist', '|',
        'image', 'link', 'unlink', 'clearhtml', 'quickformat', 'preview']
        //'image', 'multiimage', 'table', 'link', 'unlink', 'hr', 'clearhtml', 'quickformat', 'preview']
    });
  }
});

