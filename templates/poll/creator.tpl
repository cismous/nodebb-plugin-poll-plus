<div id="pollErrorBox" class="alert alert-danger hidden"></div>

<div class="form-group">
    <label for="pollInputTitle">投票标题</label>
    <input data-poll-setting="title" type="text" class="form-control" id="pollInputTitle" placeholder="输入投票标题">
</div>

<div class="form-group">
    <label for="pollInputOptions">投票选项</label>
    <textarea id="pollInputOptions" class="form-control" rows="5" placeholder="每一行代表一个投票选项"></textarea>
</div>

<h3>设置</h3>

<div class="form-group">
    <label for="pollInputAmount">每个用户投票数量</label>
    <!-- TODO change this to defaults -->
    <input data-poll-setting="max" type="number" min="1" max="10" step="1" class="form-control" id="pollInputAmount" placeholder="输入数量">
    <p class="help-block">输入大于1的，用户最多可以投票的数量.</p>
</div>

<div class="form-group">
    <label for="pollInputAmount">投票截止时间</label>
    <input data-poll-setting="end" type="text" class="form-control" id="pollInputEnd" placeholder="点击选择日期和时间">
    <p class="help-block">留空代表投票没有截止时间.</p>
</div>

<div id="dtBox"></div>
