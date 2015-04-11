(function() {
    window.Poll = {
        load: function(data) {
            Poll.sockets.emit.load(data.pollid, function(err, poll) {
                if (!err) {
                    Poll.view.init(poll, function(pollView) {
                        if (parseInt(poll.info.deleted, 10) === 1 || parseInt(poll.info.ended, 10) === 1) {
                            Poll.view.showMessage({
                                title: '投票无效',
                                content: '当前投票已结束或在已被删除。但是您仍然可以查看投票结果。'
                            }, pollView);
                        }
                    });
                } else if (err.message != 'Not logged in') {
                    app.alertError('获取投票错误');
                }
            });
        }
    };
})();
