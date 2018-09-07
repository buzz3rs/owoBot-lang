local en = {}
local URL = require('socket.url')
function en.lang()
    local info = 
    {
	name = 'English', --File name
	credits = 't.me/dakong',
        welcome = {
			text = 'Welcome $username , I am $botname. I shorten urls to make them easier to share and save!!\nFor more information <a href="https://t.me/$botusername?start=help">Click Here</a>',
			keyboard = {
				{
					{text = 'Shorten', callback_data = 'shorten'},
					},
				{
					{text = 'About', callback_data = 'about'},
					{text = 'My Links', callback_data = 'mylinks'},
					{text = 'Help', callback_data = 'help'}
					},
				{
					{text = 'Change Language', callback_data = 'chlang'}
					}
				},
			keyboard1 = {
				{
					{text = 'Shorten', callback_data = 'shorten'},
					},
				{
					{text = 'Settings', callback_data = 'settings'},
					{text = 'My Links', callback_data = 'mylinks'}
					},
				{
					{text = 'About', callback_data = 'about'},
					{text = 'Help', callback_data = 'help'}
					},
				{
					{text = 'Change Language', callback_data = 'chlang'}
					}
				},
			keyboard2 = {
				{
					{text = 'Shorten', callback_data = 'shorten'},
					},
				{
					{text = 'Settings', callback_data = 'settings'},
					{text = 'My Links', callback_data = 'mylinks'}
					},
				{
					{text = 'Sudo Tools', callback_data = 'sudocmds'},
					},
				{
					{text = 'About', callback_data = 'about'},
					{text = 'Help', callback_data = 'help'}
					},
				{
					{text = 'Change Language', callback_data = 'chlang'}
					}
				},
			},
		shorten = {
			text = 'Send the url you want to shorten.',
			text1 = 'Shorting link :\n',
			text2 = 'Shorting....',
			},
		about = {
			text = 'This bot is written by @dakong Powered By @IBcorp,\nFor Bug report and More Information Contact @dakong\nVersion 2.3.6 (special release)',
			},
		help = {
			text = '*How To Shorten\n-------------------------*\nThere are *Three* ways to shorten :\n1- pressing on *Shorten* Button in the Main Menu.\n2- Typing /shorten .\n3- Typing /shorten "*URL HERE*", EX: /shorten www.telegram.org .\n4- *Sending a url* and the bot will detect it and shorten it right away.',
			},
		settings = {
			text = 'Settings :\nCurrent Token : #token\nLinks Shortened : #links',
			text1 = 'Token Updated...',
			text2 = "Send The New Token Now.\n*You Don't Have One Yet?* [Join owo](http://ouo.io/ref/gHz3Pnwo)",
			keyboard = {
				{
					{text = 'Set Token', callback_data = 'changeapi'},
					},
				{
					{text = 'Main Menu', callback_data = 'cancel'}
					}
				},
			keyboard1 = {
				{
					{text = 'Change Token', callback_data = 'changeapi'},
					},
				{
					{text = 'Main Menu', callback_data = 'cancel'}
					}
				},
			},
		sudo = {
			text = 'ٍSudo Commands',
			text1 = 'Current Admins :\n',
			text2 = "*Forward a message* from the user you want to promote to Admin",
			text3 = 'Choose admin to demote :',
			text4 = 'Admin #name has been *Demoted!*',
			text5 = 'Admin #name has been *Promoted*',
			keyboard = {
				{
					{text = 'Admins', callback_data = 'sudocmd admins'}
					},
				{
					{text = 'Add Admin', callback_data = 'sudocmd addadmin'},
					{text = 'Del Admin', callback_data = 'sudocmd deladmin'}
					},
				{
					{text = 'Back', callback_data = 'cancel'}
					}
				},
			},
		query = {
			query = 'Main Menu!',
			query1 = 'Settings',
			query2 = 'Links History Cleared!',
			query3 = 'Shorten!',
			query4 = 'About owoBot',
			query5 = 'How To Use owoBot',
			query6 = 'Choose Language :',
			},
		back = {
			keyboard = {
				{
					{text = 'Back', callback_data = 'cancel'}
					},
				},
			keyboard1 = {
				{
					{text = 'Sudo Menu', callback_data = 'tosudomenu'}
					}
				},
			keyboard2 = {
				{
					{text = 'Back', callback_data = 'tosudomenu'},
					{text = 'Main Menu', callback_data = 'cancel'}
					}
				},
			keyboard3 = {
				{
					{text = 'Back', callback_data = 'settings'},
					{text = 'Main Menu', callback_data = 'cancel'}
					}
				},
			tosudo_btn = {
				{text = 'Back', callback_data = 'tosudomenu'},
				{text = 'Main Menu', callback_data = 'cancel'}
				},
			},
		error = {
			text = 'Admin id is not valid or the admin is no longer admin, E:102',
			text1 = 'There are no admins in the database yet, E100',
			text2 = 'No Shortened Links Yet..',
			text3 = 'Please send a valid link',
			text4 = 'This Token is Invalid.',
			text5 = 'Shortening Failed :\nInvalid URL or Invalid Token.',
			text6 = 'Failed To Shorten ...',
			text7 = 'This message belongs to a bot and i do not promote bots...',
			text8 = 'To Promote a user to admin, I only need a *Forwarded message* from him/her',
			text9 = "You're Sudo, You needn't promote yourself to admin..",
			text10 = "This Section is For Admins Only.",
			},
		mylinks = {
			text = 'Shortened links history :\n',
			keyboard = {
				{
					{text = 'Clear History', callback_data = 'clearhistory'},
					{text = 'Main Menu', callback_data = 'cancel'},
					},
				},
			},
		lang = {
			text = 'Choose Your Language',
			keyboard = {
				{
					{text = 'Arabic', callback_data = 'mklang ar'},
					{text = 'English', callback_data = 'mklang ar'},
					},
				},
			},
    }
    return info
end
return en
