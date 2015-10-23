" Vim syntax file
" Language:	irssi script
" Maintainer:	isundill <isundill@gmail.com>
" Created:	2015 Oct 02
" Last Change:	2015 Oct 05

if exists("b:current_syntax")
  finish
endif

syn case ignore
" Comments
syn match m_comment /#.*/ contains=m_todo
syn keyword m_todo TODO NOTE contained
" `)` or `}` not followed by `;`
" -- syn match m_error /[})][^ \t]*[^;])/
" Keywords & Statements
syn keyword irssi_keywords servers chatnets channels settings aliases statusbar logs hilights ignores
syn region irssi_category start="=[ \t]*(" end=")" fold transparent contains=irssi_servers,irssi_chatnets,irssi_channels,irssi_statusbar,irssi_settings,value_def,m_error,irssi_highlight
syn region irssi_category start="=[ \t]*{" end="}" fold transparent contains=irssi_servers,irssi_chatnets,irssi_channels,irssi_statusbar,irssi_settings,value_def,m_error,irssi_highlight
syn keyword irssi_servers address chatnet port autoconnect use_ssl ssl_verify
syn keyword irssi_chatnets type max_kicks max_msgs max_whois aliases statusbar contained
syn keyword irssi_channels name chatnet autojoin username realname autosendcmd contained
syn keyword irssi_statusbar items barstart barend topicbarstart topicbarend time user window window_empty
syn keyword irssi_statusbar more placement position visible window_inact prompt lag act disabled
syn keyword irssi_statusbar prompt_empty topic topic_empty default input alignment
syn keyword irssi_statusbar barend topicbarstart topicbaren priority contained
syn keyword irssi_settings core real_name user_name nick fe-text actlist_sort recode_autodetect_utf8 recode log_timestamp timestamp_format contained
syn keyword irssi_settings hide_colors theme term_charset window_history autolog_path autolog bell_beeps beep_when_away beep_msg_level screen_away_message colors contained
syn keyword irssi_highlight text nick word contained
syn region value_def start='"' end='"' skip="\\\"" oneline

" Set colors
hi def link m_comment Comment
hi def link m_todo Todo
hi def link irssi_keywords Keyword
hi def link irssi_servers Statement
hi def link irssi_chatnets Statement
hi def link irssi_channels Statement
hi def link irssi_statusbar Statement
hi def link irssi_settings Statement
hi def link irssi_highlight Statement
hi def link m_error Error
hi def link value_def Constant

let b:current_syntax = "irssi"

