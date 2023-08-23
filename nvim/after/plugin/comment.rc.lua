local status, ft = pcall(require, "Comment.ft")
if (not status) then return end
ft.ruby = '# %s'
