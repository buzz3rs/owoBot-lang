local ar = {}
local URL = require('socket.url')
function ar.lang()
    local info = 
    {
	name = 'العربية', --File name
        welcome = {
			text = 'اهلا بك يا $username , اسمي $botname. اقوم باختصار الروابط لكي تصبح سهلة المشاركة و الحفظ!!\nللمزيد من المعلومات <a href="https://t.me/$botusername?start=help">اضغط هنا</a>',
			keyboard = {
				{
					{text = 'اختصار', callback_data = 'shorten'},
					},
				{
					{text = 'حول', callback_data = 'about'},
					{text = 'روابطي', callback_data = 'mylinks'},
					{text = 'مساعدة', callback_data = 'help'}
					},
				{
					{text = 'تغيير اللغة', callback_data = 'chlang'}
					}
				},
			keyboard1 = {
				{
					{text = 'اختصار', callback_data = 'shorten'},
					},
				{
					{text = 'الاعدادات', callback_data = 'settings'},
					{text = 'روابطي', callback_data = 'mylinks'}
					},
				{
					{text = 'حول', callback_data = 'about'},
					{text = 'مساعدة', callback_data = 'help'}
					},
				{
					{text = 'تغيير اللغة', callback_data = 'chlang'}
					}
				},
			keyboard2 = {
				{
					{text = 'اختصار', callback_data = 'shorten'},
					},
				{
					{text = 'الاعدادات', callback_data = 'settings'},
					{text = 'روابطي', callback_data = 'mylinks'}
					},
				{
					{text = 'ادوات المنشئ', callback_data = 'sudocmds'},
					},
				{
					{text = 'حول', callback_data = 'about'},
					{text = 'مساعدة', callback_data = 'help'}
					},
				{
					{text = 'تغيير اللغة', callback_data = 'chlang'}
					}
				},
			},
		shorten = {
			text = 'ارسل الرابط الذي تريد اختصاره.',
			text1 = 'الروابط قيد الاختصار :\n',
			text2 = 'جاري الاختصار....',
			},
		about = {
			text = 'ان هذا البوت ملك و مدعوم من قبل @IBcorp,\nللابلاغ عن خطأ او استفسار تواصل مع المطور @dakong\nاصدار 2.3.6 (نسخة حصرية)',
			},
		help = {
			text = '*كيفية اختصار الروابط\n-------------------------*\nهنالك *اربعة* طرق لأختصار الروابط :\n1- الضغط على مفتاح *اختصار* الموجود في القائمة الرئيسية.\n2- كتابة /shorten .\n3- كتابة /shorten "*هنا الرابط*", مثال: /shorten www.telegram.org .\n4- *ارسال رابط او مجموعة روابط* و سيتم اكتشافها و اختصارها فورا.',
			},
		settings = {
			text = 'الاعدادت :\nالتوكن الحالي : #token\nالروابط المختصرة : #links',
			text1 = 'تم تحديث التوكن...',
			text2 = "قم بارسال التوكن الجديد الان.\n*لا تملك توكن الى الان؟* [انضم الى owo](http://ouo.io/ref/gHz3Pnwo)",
			keyboard = {
				{
					{text = 'تعيين توكن', callback_data = 'changeapi'},
					},
				{
					{text = 'القائمة الرئيسية', callback_data = 'cancel'}
					}
				},
			keyboard1 = {
				{
					{text = 'تغيير التوكن', callback_data = 'changeapi'},
					},
				{
					{text = 'القائمة الرئيسية', callback_data = 'cancel'}
					}
				},
			},
		sudo = {
			text = 'ٍاوامر المنشئ',
			text1 = 'المدراء الحاليين :\n',
			text2 = "*قم بأعادة توجيه رسالة* من العضو الذي تريد ترقيته الى مدير",
			text3 = 'اختر مدير ليتم اعفاءه من مهامه :',
			text4 = 'المدير #name تم اعفاءه من مهامه!*',
			text5 = 'المدير #name تمت ترقيته',
			keyboard = {
				{
					{text = 'المدراء', callback_data = 'sudocmd admins'}
					},
				{
					{text = 'اضافة مدير', callback_data = 'sudocmd addadmin'},
					{text = 'اعفاء مدير', callback_data = 'sudocmd deladmin'}
					},
				{
					{text = 'رجوع', callback_data = 'cancel'}
					}
				},
			},
		query = {
			query = 'القائمة الرئيسية!',
			query1 = 'الاعدادات',
			query2 = 'تم مسح سجل الروابط المختصرة!',
			query3 = 'اختصار روابط!',
			query4 = 'حول البوت',
			query5 = 'كيفية استعمال البوت',
			query6 = 'اختر لغة :',
			},
		back = {
			keyboard = {
				{
					{text = 'رجوع', callback_data = 'cancel'}
					},
				},
			keyboard1 = {
				{
					{text = 'قائمة المنشئ', callback_data = 'tosudomenu'}
					}
				},
			keyboard2 = {
				{
					{text = 'رجوع', callback_data = 'tosudomenu'},
					{text = 'القائمة الرئيسية', callback_data = 'cancel'}
					}
				},
			keyboard3 = {
				{
					{text = 'رجوع', callback_data = 'settings'},
					{text = 'القائمة الرئيسية', callback_data = 'cancel'}
					}
				},
			tosudo_btn = {
				{text = 'رجوع', callback_data = 'tosudomenu'},
				{text = 'القئمة الرئيسية', callback_data = 'cancel'}
				},
			},
		error = {
			text = 'ايدي المدير غير صالح او العضو لم يعد مديرا, E:102',
			text1 = 'لا يوجد مدراء حاليا, E100',
			text2 = 'لا توجد روابط مختصرة حاليا..',
			text3 = 'يرجى ارسال رابط فعال',
			text4 = 'التوكن غير صالح.',
			text5 = 'فشلت عملية الاختصار :\nرابط غير صالح او توكن غير صالحة.',
			text6 = 'فشلت عملية الاختصار ...',
			text7 = 'هى هذا الرسالة تعود الى روبوت و انا لا اقوم بترقية الروبوتات...',
			text8 = 'لترقية عضو الى مدير انا احتاج *رسالة توجيه* منه/منها فقط لا اكثر',
			text9 = "انت هو المنشئ, لا حاجة الى ترقية نفسك الى مدير..",
			text10 = "هذا القسم يخص المدراء فقط.",
			},
		mylinks = {
			text = 'سجل الروابط المختصرة :\n',
			keyboard = {
				{
					{text = 'مسح السجل', callback_data = 'clearhistory'},
					{text = 'القائمة الرئيسية', callback_data = 'cancel'},
					},
				},
			},
		lang = {
			text = 'اختر لغتك',
			},
    }
    return info
end
return ar
