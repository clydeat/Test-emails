require 'mail'

mail = Mail.new do
  from    'p.fombonne@gmail.com'
  to      'p.fombonne@gmail.com'
  subject 'This is a test email'
  body    File.read('body.txt')
end

mail.to_s


Mail.deliver do
  from     'p.fombonne@gmail.com'
  to       'p.fombonne@gmail.com'
  subject 'This is a test email'
  body    File.read('body.txt')
end

mail.deliver
