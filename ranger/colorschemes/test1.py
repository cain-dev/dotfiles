from ranger.gui.colorscheme import ColorScheme
from ranger.gui.color import *

class base(ColorScheme):
    progress_bar_color = 22 #OK

    def use(self, context):
        fg, bg, attr = default_colors

        if context.reset:
            return default_colors

        elif context.in_browser:
            if context.selected:
                bg = 0 #OK
                attr |= bold
            else:
                attr = normal
            if context.empty or context.error:  
                fg = 196 #OK                        
                bg = 52 #OK                         
            if context.border:                  
                fg = 64 #OK
            if context.image:                   
                fg = 39 #OK
            if context.video:                   
                fg = 93 #OK
            if context.audio:                   
                fg = 208 #OK
            if context.document:                
                fg = 15 #OK
            if context.container:               
                fg = 137 #OK
            if context.directory:               
                fg = 220 #OK
            elif context.executable and not \
                    any((context.media, context.container,
                       context.fifo, context.socket)):
                fg = 2 #OK                         
            if context.socket:
                fg = 3
                attr |= bold
            if context.fifo or context.device:
                fg = 10
                if context.device:
                    attr |= bold
            if context.link:
                fg = context.good and 7 or 8
                bg = 4 #OK
            if context.bad:
                fg = 1 
            if context.marked:
                bg = 18 #OK
            if context.cut:
                fg = 160 #OK
            if context.copied:
                fg = 8 #OK
            if (context.cut or context.copied) and (context.marked and context.selected):
                fg = 255 #OK
            if context.badinfo:
                if attr & reverse:
                    bg = 1
                else:
                    fg = 7

        elif context.in_titlebar:
            attr |= bold
            if context.hostname:
                fg = 82 #OK
                bg = 0 #OK
                #fg = context.bad and 8 or 7
            elif context.directory:
                fg = 220 #OK
                bg = 0 #OK
            elif context.tab:
                if context.good:
                    fg = 1
            elif context.link:
                fg = 8
        elif context.in_statusbar:
            if context.permissions:
                if context.good:
                    fg = 10
                elif context.bad:
                    fg = 9
            if context.marked:
                attr |= bold | reverse
                fg = 8
            if context.message:
                if context.bad:
                    attr |= bold
                    fg = 10
            if context.loaded:
                bg = self.progress_bar_color
            if context.vcsinfo:
                fg = 10
                attr &= ~bold
            if context.vcscommit:
                fg = 5
                attr &= ~bold

        if context.text:
            if context.highlight:
                attr |= reverse

        if context.in_taskview:
            if context.title:
                fg = 8

            if context.selected:
                attr |= reverse

            if context.loaded:
                if context.selected:
                    fg = self.progress_bar_color
                else:
                    bg = self.progress_bar_color

        if context.vcsfile and not context.selected:
            attr &= ~bold
            if context.vcsconflict:
                fg = 11
            elif context.vcschanged:
                fg = 12
            elif context.vcsunknown:
                fg = 210
            elif context.vcsstaged:
                fg = 216
            elif context.vcssync:
                fg = 113
            elif context.vcsignored:
                fg = 141

        elif context.vcsremote and not context.selected:
            attr &= ~bold
            if context.vcssync:
                fg = 12
            elif context.vcsbehind:
                fg = 13
            elif context.vcsahead:
                fg = 9
            elif context.vcsdiverged:
                fg = 10
            elif context.vcsunknown:
                fg = 11

        return fg, bg, attr
