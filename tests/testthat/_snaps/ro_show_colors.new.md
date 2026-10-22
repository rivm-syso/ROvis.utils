# ro_show_colors returns correct output

    Code
      str(plot_predef$x$data)
    Output
      List of 6
       $ :List of 15
        ..$ x          : num [1:5] 0.5 0.5 1.5 1.5 0.5
        ..$ y          : num [1:5] 1.5 2.5 2.5 1.5 1.5
        ..$ text       : chr "<b> Color number 2: #377eb8 (#377eb8)</b>"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "lines"
        ..$ line       :List of 3
        .. ..$ width: num 0.756
        .. ..$ color: chr "transparent"
        .. ..$ dash : chr "solid"
        ..$ fill       : chr "toself"
        ..$ fillcolor  : chr "rgba(228,26,28,1)"
        ..$ hoveron    : chr "fills"
        ..$ name       : chr "#377eb8"
        ..$ legendgroup: chr "#377eb8"
        ..$ showlegend : logi TRUE
        ..$ xaxis      : chr "x"
        ..$ yaxis      : chr "y"
        ..$ hoverinfo  : chr "text"
       $ :List of 15
        ..$ x          : num [1:5] 0.5 0.5 1.5 1.5 0.5
        ..$ y          : num [1:5] 0.5 1.5 1.5 0.5 0.5
        ..$ text       : chr "<b> Color number 3: #4daf4a (#4daf4a)</b>"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "lines"
        ..$ line       :List of 3
        .. ..$ width: num 0.756
        .. ..$ color: chr "transparent"
        .. ..$ dash : chr "solid"
        ..$ fill       : chr "toself"
        ..$ fillcolor  : chr "rgba(55,126,184,1)"
        ..$ hoveron    : chr "fills"
        ..$ name       : chr "#4daf4a"
        ..$ legendgroup: chr "#4daf4a"
        ..$ showlegend : logi TRUE
        ..$ xaxis      : chr "x"
        ..$ yaxis      : chr "y"
        ..$ hoverinfo  : chr "text"
       $ :List of 15
        ..$ x          : num [1:5] 0.5 0.5 1.5 1.5 0.5
        ..$ y          : num [1:5] 2.5 3.5 3.5 2.5 2.5
        ..$ text       : chr "<b> Color number 1: #e41a1c (#e41a1c)</b>"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "lines"
        ..$ line       :List of 3
        .. ..$ width: num 0.756
        .. ..$ color: chr "transparent"
        .. ..$ dash : chr "solid"
        ..$ fill       : chr "toself"
        ..$ fillcolor  : chr "rgba(77,175,74,1)"
        ..$ hoveron    : chr "fills"
        ..$ name       : chr "#e41a1c"
        ..$ legendgroup: chr "#e41a1c"
        ..$ showlegend : logi TRUE
        ..$ xaxis      : chr "x"
        ..$ yaxis      : chr "y"
        ..$ hoverinfo  : chr "text"
       $ :List of 14
        ..$ x          : num 1
        ..$ y          : 'mapped_discrete' num 2
        ..$ text       : chr "#377eb8"
        ..$ hovertext  : chr "<b> Color number 2: #377eb8 (#377eb8)</b>"
        ..$ textfont   :List of 2
        .. ..$ size : num 14.6
        .. ..$ color: chr "rgba(255,255,255,1)"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "text"
        ..$ hoveron    : chr "points"
        ..$ name       : chr "#377eb8"
        ..$ legendgroup: chr "#377eb8"
        ..$ showlegend : logi FALSE
        ..$ xaxis      : chr "x"
        ..$ yaxis      : chr "y"
        ..$ hoverinfo  : chr "text"
       $ :List of 14
        ..$ x          : num 1
        ..$ y          : 'mapped_discrete' num 1
        ..$ text       : chr "#4daf4a"
        ..$ hovertext  : chr "<b> Color number 3: #4daf4a (#4daf4a)</b>"
        ..$ textfont   :List of 2
        .. ..$ size : num 14.6
        .. ..$ color: chr "rgba(255,255,255,1)"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "text"
        ..$ hoveron    : chr "points"
        ..$ name       : chr "#4daf4a"
        ..$ legendgroup: chr "#4daf4a"
        ..$ showlegend : logi FALSE
        ..$ xaxis      : chr "x"
        ..$ yaxis      : chr "y"
        ..$ hoverinfo  : chr "text"
       $ :List of 14
        ..$ x          : num 1
        ..$ y          : 'mapped_discrete' num 3
        ..$ text       : chr "#e41a1c"
        ..$ hovertext  : chr "<b> Color number 1: #e41a1c (#e41a1c)</b>"
        ..$ textfont   :List of 2
        .. ..$ size : num 14.6
        .. ..$ color: chr "rgba(255,255,255,1)"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "text"
        ..$ hoveron    : chr "points"
        ..$ name       : chr "#e41a1c"
        ..$ legendgroup: chr "#e41a1c"
        ..$ showlegend : logi FALSE
        ..$ xaxis      : chr "x"
        ..$ yaxis      : chr "y"
        ..$ hoverinfo  : chr "text"

---

    Code
      str(plot_custom_named$x$data)
    Output
      List of 6
       $ :List of 15
        ..$ x          : num [1:5] 0.5 0.5 1.5 1.5 0.5
        ..$ y          : num [1:5] 1.5 2.5 2.5 1.5 1.5
        ..$ text       : chr "<b> Color number 2: #39870c (#39870c)</b>"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "lines"
        ..$ line       :List of 3
        .. ..$ width: num 0.756
        .. ..$ color: chr "transparent"
        .. ..$ dash : chr "solid"
        ..$ fill       : chr "toself"
        ..$ fillcolor  : chr "rgba(127,127,127,1)"
        ..$ hoveron    : chr "fills"
        ..$ name       : chr "#39870c"
        ..$ legendgroup: chr "#39870c"
        ..$ showlegend : logi TRUE
        ..$ xaxis      : chr "x"
        ..$ yaxis      : chr "y"
        ..$ hoverinfo  : chr "text"
       $ :List of 15
        ..$ x          : num [1:5] 0.5 0.5 1.5 1.5 0.5
        ..$ y          : num [1:5] 2.5 3.5 3.5 2.5 2.5
        ..$ text       : chr "<b> Color number 1: #e17000 (#e17000)</b>"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "lines"
        ..$ line       :List of 3
        .. ..$ width: num 0.756
        .. ..$ color: chr "transparent"
        .. ..$ dash : chr "solid"
        ..$ fill       : chr "toself"
        ..$ fillcolor  : chr "rgba(127,127,127,1)"
        ..$ hoveron    : chr "fills"
        ..$ name       : chr "#e17000"
        ..$ legendgroup: chr "#e17000"
        ..$ showlegend : logi TRUE
        ..$ xaxis      : chr "x"
        ..$ yaxis      : chr "y"
        ..$ hoverinfo  : chr "text"
       $ :List of 15
        ..$ x          : num [1:5] 0.5 0.5 1.5 1.5 0.5
        ..$ y          : num [1:5] 0.5 1.5 1.5 0.5 0.5
        ..$ text       : chr "<b> Color number 3: #f092cd (#f092cd)</b>"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "lines"
        ..$ line       :List of 3
        .. ..$ width: num 0.756
        .. ..$ color: chr "transparent"
        .. ..$ dash : chr "solid"
        ..$ fill       : chr "toself"
        ..$ fillcolor  : chr "rgba(127,127,127,1)"
        ..$ hoveron    : chr "fills"
        ..$ name       : chr "#f092cd"
        ..$ legendgroup: chr "#f092cd"
        ..$ showlegend : logi TRUE
        ..$ xaxis      : chr "x"
        ..$ yaxis      : chr "y"
        ..$ hoverinfo  : chr "text"
       $ :List of 14
        ..$ x          : num 1
        ..$ y          : 'mapped_discrete' num 2
        ..$ text       : chr "#39870c"
        ..$ hovertext  : chr "<b> Color number 2: #39870c (#39870c)</b>"
        ..$ textfont   :List of 2
        .. ..$ size : num 14.6
        .. ..$ color: chr "rgba(255,255,255,1)"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "text"
        ..$ hoveron    : chr "points"
        ..$ name       : chr "#39870c"
        ..$ legendgroup: chr "#39870c"
        ..$ showlegend : logi FALSE
        ..$ xaxis      : chr "x"
        ..$ yaxis      : chr "y"
        ..$ hoverinfo  : chr "text"
       $ :List of 14
        ..$ x          : num 1
        ..$ y          : 'mapped_discrete' num 3
        ..$ text       : chr "#e17000"
        ..$ hovertext  : chr "<b> Color number 1: #e17000 (#e17000)</b>"
        ..$ textfont   :List of 2
        .. ..$ size : num 14.6
        .. ..$ color: chr "rgba(255,255,255,1)"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "text"
        ..$ hoveron    : chr "points"
        ..$ name       : chr "#e17000"
        ..$ legendgroup: chr "#e17000"
        ..$ showlegend : logi FALSE
        ..$ xaxis      : chr "x"
        ..$ yaxis      : chr "y"
        ..$ hoverinfo  : chr "text"
       $ :List of 14
        ..$ x          : num 1
        ..$ y          : 'mapped_discrete' num 1
        ..$ text       : chr "#f092cd"
        ..$ hovertext  : chr "<b> Color number 3: #f092cd (#f092cd)</b>"
        ..$ textfont   :List of 2
        .. ..$ size : num 14.6
        .. ..$ color: chr "rgba(255,255,255,1)"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "text"
        ..$ hoveron    : chr "points"
        ..$ name       : chr "#f092cd"
        ..$ legendgroup: chr "#f092cd"
        ..$ showlegend : logi FALSE
        ..$ xaxis      : chr "x"
        ..$ yaxis      : chr "y"
        ..$ hoverinfo  : chr "text"

---

    Code
      str(plot_custom_unnamed$x$data)
    Output
      List of 6
       $ :List of 15
        ..$ x          : num [1:5] 0.5 0.5 1.5 1.5 0.5
        ..$ y          : num [1:5] 0.5 1.5 1.5 0.5 0.5
        ..$ text       : chr "<b> Color number 3: #007BC7 (#007BC7)</b>"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "lines"
        ..$ line       :List of 3
        .. ..$ width: num 0.756
        .. ..$ color: chr "transparent"
        .. ..$ dash : chr "solid"
        ..$ fill       : chr "toself"
        ..$ fillcolor  : chr "rgba(127,127,127,1)"
        ..$ hoveron    : chr "fills"
        ..$ name       : chr "#007BC7"
        ..$ legendgroup: chr "#007BC7"
        ..$ showlegend : logi TRUE
        ..$ xaxis      : chr "x"
        ..$ yaxis      : chr "y"
        ..$ hoverinfo  : chr "text"
       $ :List of 15
        ..$ x          : num [1:5] 0.5 0.5 1.5 1.5 0.5
        ..$ y          : num [1:5] 1.5 2.5 2.5 1.5 1.5
        ..$ text       : chr "<b> Color number 2: #89B1DF (#89B1DF)</b>"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "lines"
        ..$ line       :List of 3
        .. ..$ width: num 0.756
        .. ..$ color: chr "transparent"
        .. ..$ dash : chr "solid"
        ..$ fill       : chr "toself"
        ..$ fillcolor  : chr "rgba(127,127,127,1)"
        ..$ hoveron    : chr "fills"
        ..$ name       : chr "#89B1DF"
        ..$ legendgroup: chr "#89B1DF"
        ..$ showlegend : logi TRUE
        ..$ xaxis      : chr "x"
        ..$ yaxis      : chr "y"
        ..$ hoverinfo  : chr "text"
       $ :List of 15
        ..$ x          : num [1:5] 0.5 0.5 1.5 1.5 0.5
        ..$ y          : num [1:5] 2.5 3.5 3.5 2.5 2.5
        ..$ text       : chr "<b> Color number 1: #D9EBF7 (#D9EBF7)</b>"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "lines"
        ..$ line       :List of 3
        .. ..$ width: num 0.756
        .. ..$ color: chr "transparent"
        .. ..$ dash : chr "solid"
        ..$ fill       : chr "toself"
        ..$ fillcolor  : chr "rgba(127,127,127,1)"
        ..$ hoveron    : chr "fills"
        ..$ name       : chr "#D9EBF7"
        ..$ legendgroup: chr "#D9EBF7"
        ..$ showlegend : logi TRUE
        ..$ xaxis      : chr "x"
        ..$ yaxis      : chr "y"
        ..$ hoverinfo  : chr "text"
       $ :List of 14
        ..$ x          : num 1
        ..$ y          : 'mapped_discrete' num 1
        ..$ text       : chr "#007BC7"
        ..$ hovertext  : chr "<b> Color number 3: #007BC7 (#007BC7)</b>"
        ..$ textfont   :List of 2
        .. ..$ size : num 14.6
        .. ..$ color: chr "rgba(255,255,255,1)"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "text"
        ..$ hoveron    : chr "points"
        ..$ name       : chr "#007BC7"
        ..$ legendgroup: chr "#007BC7"
        ..$ showlegend : logi FALSE
        ..$ xaxis      : chr "x"
        ..$ yaxis      : chr "y"
        ..$ hoverinfo  : chr "text"
       $ :List of 14
        ..$ x          : num 1
        ..$ y          : 'mapped_discrete' num 2
        ..$ text       : chr "#89B1DF"
        ..$ hovertext  : chr "<b> Color number 2: #89B1DF (#89B1DF)</b>"
        ..$ textfont   :List of 2
        .. ..$ size : num 14.6
        .. ..$ color: chr "rgba(255,255,255,1)"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "text"
        ..$ hoveron    : chr "points"
        ..$ name       : chr "#89B1DF"
        ..$ legendgroup: chr "#89B1DF"
        ..$ showlegend : logi FALSE
        ..$ xaxis      : chr "x"
        ..$ yaxis      : chr "y"
        ..$ hoverinfo  : chr "text"
       $ :List of 14
        ..$ x          : num 1
        ..$ y          : 'mapped_discrete' num 3
        ..$ text       : chr "#D9EBF7"
        ..$ hovertext  : chr "<b> Color number 1: #D9EBF7 (#D9EBF7)</b>"
        ..$ textfont   :List of 2
        .. ..$ size : num 14.6
        .. ..$ color: chr "rgba(255,255,255,1)"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "text"
        ..$ hoveron    : chr "points"
        ..$ name       : chr "#D9EBF7"
        ..$ legendgroup: chr "#D9EBF7"
        ..$ showlegend : logi FALSE
        ..$ xaxis      : chr "x"
        ..$ yaxis      : chr "y"
        ..$ hoverinfo  : chr "text"

---

    Code
      str(plot_one_color$x$data)
    Output
      List of 2
       $ :List of 15
        ..$ x          : num [1:5] 0.5 0.5 1.5 1.5 0.5
        ..$ y          : num [1:5] 0.5 1.5 1.5 0.5 0.5
        ..$ text       : chr "<b> Color number 1: #76d2b6 (#76d2b6)</b>"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "lines"
        ..$ line       :List of 3
        .. ..$ width: num 0.756
        .. ..$ color: chr "transparent"
        .. ..$ dash : chr "solid"
        ..$ fill       : chr "toself"
        ..$ fillcolor  : chr "rgba(127,127,127,1)"
        ..$ hoveron    : chr "fills"
        ..$ name       : chr "#76d2b6"
        ..$ legendgroup: chr "#76d2b6"
        ..$ showlegend : logi TRUE
        ..$ xaxis      : chr "x"
        ..$ yaxis      : chr "y"
        ..$ hoverinfo  : chr "text"
       $ :List of 14
        ..$ x          : num 1
        ..$ y          : 'mapped_discrete' num 1
        ..$ text       : chr "#76d2b6"
        ..$ hovertext  : chr "<b> Color number 1: #76d2b6 (#76d2b6)</b>"
        ..$ textfont   :List of 2
        .. ..$ size : num 14.6
        .. ..$ color: chr "rgba(255,255,255,1)"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "text"
        ..$ hoveron    : chr "points"
        ..$ name       : chr "#76d2b6"
        ..$ legendgroup: chr "#76d2b6"
        ..$ showlegend : logi FALSE
        ..$ xaxis      : chr "x"
        ..$ yaxis      : chr "y"
        ..$ hoverinfo  : chr "text"

