# ro_show_colors returns correct output

    Code
      str(plot_predef$x$data)
    Output
      List of 6
       $ :List of 15
        ..$ x          : num [1:5] 0.5 0.5 1.5 1.5 0.5
        ..$ y          : num [1:5] 2.5 3.5 3.5 2.5 2.5
        ..$ text       : chr "<b> Color number 1: hemelblauw (#007bc7)</b>"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "lines"
        ..$ line       :List of 3
        .. ..$ width: num 0.756
        .. ..$ color: chr "transparent"
        .. ..$ dash : chr "solid"
        ..$ fill       : chr "toself"
        ..$ fillcolor  : chr "rgba(0,123,199,1)"
        ..$ hoveron    : chr "fills"
        ..$ name       : chr "hemelblauw"
        ..$ legendgroup: chr "hemelblauw"
        ..$ showlegend : logi TRUE
        ..$ xaxis      : chr "x"
        ..$ yaxis      : chr "y"
        ..$ hoverinfo  : chr "text"
       $ :List of 15
        ..$ x          : num [1:5] 0.5 0.5 1.5 1.5 0.5
        ..$ y          : num [1:5] 0.5 1.5 1.5 0.5 0.5
        ..$ text       : chr "<b> Color number 3: paars_tint90 (#552c6f)</b>"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "lines"
        ..$ line       :List of 3
        .. ..$ width: num 0.756
        .. ..$ color: chr "transparent"
        .. ..$ dash : chr "solid"
        ..$ fill       : chr "toself"
        ..$ fillcolor  : chr "rgba(85,44,111,1)"
        ..$ hoveron    : chr "fills"
        ..$ name       : chr "paars_tint90"
        ..$ legendgroup: chr "paars_tint90"
        ..$ showlegend : logi TRUE
        ..$ xaxis      : chr "x"
        ..$ yaxis      : chr "y"
        ..$ hoverinfo  : chr "text"
       $ :List of 15
        ..$ x          : num [1:5] 0.5 0.5 1.5 1.5 0.5
        ..$ y          : num [1:5] 1.5 2.5 2.5 1.5 1.5
        ..$ text       : chr "<b> Color number 2: robijnrood (#ca005d)</b>"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "lines"
        ..$ line       :List of 3
        .. ..$ width: num 0.756
        .. ..$ color: chr "transparent"
        .. ..$ dash : chr "solid"
        ..$ fill       : chr "toself"
        ..$ fillcolor  : chr "rgba(202,0,93,1)"
        ..$ hoveron    : chr "fills"
        ..$ name       : chr "robijnrood"
        ..$ legendgroup: chr "robijnrood"
        ..$ showlegend : logi TRUE
        ..$ xaxis      : chr "x"
        ..$ yaxis      : chr "y"
        ..$ hoverinfo  : chr "text"
       $ :List of 14
        ..$ x          : num 1
        ..$ y          : 'mapped_discrete' num 3
        ..$ text       : chr "hemelblauw"
        ..$ hovertext  : chr "<b> Color number 1: hemelblauw (#007bc7)</b>"
        ..$ textfont   :List of 2
        .. ..$ size : num 14.6
        .. ..$ color: chr "rgba(255,255,255,1)"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "text"
        ..$ hoveron    : chr "points"
        ..$ name       : chr "hemelblauw"
        ..$ legendgroup: chr "hemelblauw"
        ..$ showlegend : logi FALSE
        ..$ xaxis      : chr "x"
        ..$ yaxis      : chr "y"
        ..$ hoverinfo  : chr "text"
       $ :List of 14
        ..$ x          : num 1
        ..$ y          : 'mapped_discrete' num 1
        ..$ text       : chr "paars_tint90"
        ..$ hovertext  : chr "<b> Color number 3: paars_tint90 (#552c6f)</b>"
        ..$ textfont   :List of 2
        .. ..$ size : num 14.6
        .. ..$ color: chr "rgba(255,255,255,1)"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "text"
        ..$ hoveron    : chr "points"
        ..$ name       : chr "paars_tint90"
        ..$ legendgroup: chr "paars_tint90"
        ..$ showlegend : logi FALSE
        ..$ xaxis      : chr "x"
        ..$ yaxis      : chr "y"
        ..$ hoverinfo  : chr "text"
       $ :List of 14
        ..$ x          : num 1
        ..$ y          : 'mapped_discrete' num 2
        ..$ text       : chr "robijnrood"
        ..$ hovertext  : chr "<b> Color number 2: robijnrood (#ca005d)</b>"
        ..$ textfont   :List of 2
        .. ..$ size : num 14.6
        .. ..$ color: chr "rgba(255,255,255,1)"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "text"
        ..$ hoveron    : chr "points"
        ..$ name       : chr "robijnrood"
        ..$ legendgroup: chr "robijnrood"
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
        ..$ text       : chr "<b> Color number 2: groen (#39870c)</b>"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "lines"
        ..$ line       :List of 3
        .. ..$ width: num 0.756
        .. ..$ color: chr "transparent"
        .. ..$ dash : chr "solid"
        ..$ fill       : chr "toself"
        ..$ fillcolor  : chr "rgba(57,135,12,1)"
        ..$ hoveron    : chr "fills"
        ..$ name       : chr "groen"
        ..$ legendgroup: chr "groen"
        ..$ showlegend : logi TRUE
        ..$ xaxis      : chr "x"
        ..$ yaxis      : chr "y"
        ..$ hoverinfo  : chr "text"
       $ :List of 15
        ..$ x          : num [1:5] 0.5 0.5 1.5 1.5 0.5
        ..$ y          : num [1:5] 2.5 3.5 3.5 2.5 2.5
        ..$ text       : chr "<b> Color number 1: oranje (#e17000)</b>"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "lines"
        ..$ line       :List of 3
        .. ..$ width: num 0.756
        .. ..$ color: chr "transparent"
        .. ..$ dash : chr "solid"
        ..$ fill       : chr "toself"
        ..$ fillcolor  : chr "rgba(225,112,0,1)"
        ..$ hoveron    : chr "fills"
        ..$ name       : chr "oranje"
        ..$ legendgroup: chr "oranje"
        ..$ showlegend : logi TRUE
        ..$ xaxis      : chr "x"
        ..$ yaxis      : chr "y"
        ..$ hoverinfo  : chr "text"
       $ :List of 15
        ..$ x          : num [1:5] 0.5 0.5 1.5 1.5 0.5
        ..$ y          : num [1:5] 0.5 1.5 1.5 0.5 0.5
        ..$ text       : chr "<b> Color number 3: roze (#f092cd)</b>"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "lines"
        ..$ line       :List of 3
        .. ..$ width: num 0.756
        .. ..$ color: chr "transparent"
        .. ..$ dash : chr "solid"
        ..$ fill       : chr "toself"
        ..$ fillcolor  : chr "rgba(240,146,205,1)"
        ..$ hoveron    : chr "fills"
        ..$ name       : chr "roze"
        ..$ legendgroup: chr "roze"
        ..$ showlegend : logi TRUE
        ..$ xaxis      : chr "x"
        ..$ yaxis      : chr "y"
        ..$ hoverinfo  : chr "text"
       $ :List of 14
        ..$ x          : num 1
        ..$ y          : 'mapped_discrete' num 2
        ..$ text       : chr "groen"
        ..$ hovertext  : chr "<b> Color number 2: groen (#39870c)</b>"
        ..$ textfont   :List of 2
        .. ..$ size : num 14.6
        .. ..$ color: chr "rgba(255,255,255,1)"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "text"
        ..$ hoveron    : chr "points"
        ..$ name       : chr "groen"
        ..$ legendgroup: chr "groen"
        ..$ showlegend : logi FALSE
        ..$ xaxis      : chr "x"
        ..$ yaxis      : chr "y"
        ..$ hoverinfo  : chr "text"
       $ :List of 14
        ..$ x          : num 1
        ..$ y          : 'mapped_discrete' num 3
        ..$ text       : chr "oranje"
        ..$ hovertext  : chr "<b> Color number 1: oranje (#e17000)</b>"
        ..$ textfont   :List of 2
        .. ..$ size : num 14.6
        .. ..$ color: chr "rgba(255,255,255,1)"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "text"
        ..$ hoveron    : chr "points"
        ..$ name       : chr "oranje"
        ..$ legendgroup: chr "oranje"
        ..$ showlegend : logi FALSE
        ..$ xaxis      : chr "x"
        ..$ yaxis      : chr "y"
        ..$ hoverinfo  : chr "text"
       $ :List of 14
        ..$ x          : num 1
        ..$ y          : 'mapped_discrete' num 1
        ..$ text       : chr "roze"
        ..$ hovertext  : chr "<b> Color number 3: roze (#f092cd)</b>"
        ..$ textfont   :List of 2
        .. ..$ size : num 14.6
        .. ..$ color: chr "rgba(255,255,255,1)"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "text"
        ..$ hoveron    : chr "points"
        ..$ name       : chr "roze"
        ..$ legendgroup: chr "roze"
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
        ..$ y          : num [1:5] 2.5 3.5 3.5 2.5 2.5
        ..$ text       : chr "<b> Color number 1: 1 (#D9EBF7)</b>"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "lines"
        ..$ line       :List of 3
        .. ..$ width: num 0.756
        .. ..$ color: chr "transparent"
        .. ..$ dash : chr "solid"
        ..$ fill       : chr "toself"
        ..$ fillcolor  : chr "rgba(217,235,247,1)"
        ..$ hoveron    : chr "fills"
        ..$ name       : chr "1"
        ..$ legendgroup: chr "1"
        ..$ showlegend : logi TRUE
        ..$ xaxis      : chr "x"
        ..$ yaxis      : chr "y"
        ..$ hoverinfo  : chr "text"
       $ :List of 15
        ..$ x          : num [1:5] 0.5 0.5 1.5 1.5 0.5
        ..$ y          : num [1:5] 1.5 2.5 2.5 1.5 1.5
        ..$ text       : chr "<b> Color number 2: 2 (#89B1DF)</b>"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "lines"
        ..$ line       :List of 3
        .. ..$ width: num 0.756
        .. ..$ color: chr "transparent"
        .. ..$ dash : chr "solid"
        ..$ fill       : chr "toself"
        ..$ fillcolor  : chr "rgba(137,177,223,1)"
        ..$ hoveron    : chr "fills"
        ..$ name       : chr "2"
        ..$ legendgroup: chr "2"
        ..$ showlegend : logi TRUE
        ..$ xaxis      : chr "x"
        ..$ yaxis      : chr "y"
        ..$ hoverinfo  : chr "text"
       $ :List of 15
        ..$ x          : num [1:5] 0.5 0.5 1.5 1.5 0.5
        ..$ y          : num [1:5] 0.5 1.5 1.5 0.5 0.5
        ..$ text       : chr "<b> Color number 3: 3 (#007BC7)</b>"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "lines"
        ..$ line       :List of 3
        .. ..$ width: num 0.756
        .. ..$ color: chr "transparent"
        .. ..$ dash : chr "solid"
        ..$ fill       : chr "toself"
        ..$ fillcolor  : chr "rgba(0,123,199,1)"
        ..$ hoveron    : chr "fills"
        ..$ name       : chr "3"
        ..$ legendgroup: chr "3"
        ..$ showlegend : logi TRUE
        ..$ xaxis      : chr "x"
        ..$ yaxis      : chr "y"
        ..$ hoverinfo  : chr "text"
       $ :List of 14
        ..$ x          : num 1
        ..$ y          : 'mapped_discrete' num 3
        ..$ text       : chr "1"
        ..$ hovertext  : chr "<b> Color number 1: 1 (#D9EBF7)</b>"
        ..$ textfont   :List of 2
        .. ..$ size : num 14.6
        .. ..$ color: chr "rgba(255,255,255,1)"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "text"
        ..$ hoveron    : chr "points"
        ..$ name       : chr "1"
        ..$ legendgroup: chr "1"
        ..$ showlegend : logi FALSE
        ..$ xaxis      : chr "x"
        ..$ yaxis      : chr "y"
        ..$ hoverinfo  : chr "text"
       $ :List of 14
        ..$ x          : num 1
        ..$ y          : 'mapped_discrete' num 2
        ..$ text       : chr "2"
        ..$ hovertext  : chr "<b> Color number 2: 2 (#89B1DF)</b>"
        ..$ textfont   :List of 2
        .. ..$ size : num 14.6
        .. ..$ color: chr "rgba(255,255,255,1)"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "text"
        ..$ hoveron    : chr "points"
        ..$ name       : chr "2"
        ..$ legendgroup: chr "2"
        ..$ showlegend : logi FALSE
        ..$ xaxis      : chr "x"
        ..$ yaxis      : chr "y"
        ..$ hoverinfo  : chr "text"
       $ :List of 14
        ..$ x          : num 1
        ..$ y          : 'mapped_discrete' num 1
        ..$ text       : chr "3"
        ..$ hovertext  : chr "<b> Color number 3: 3 (#007BC7)</b>"
        ..$ textfont   :List of 2
        .. ..$ size : num 14.6
        .. ..$ color: chr "rgba(255,255,255,1)"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "text"
        ..$ hoveron    : chr "points"
        ..$ name       : chr "3"
        ..$ legendgroup: chr "3"
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
        ..$ text       : chr "<b> Color number 1: 1 (#76d2b6)</b>"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "lines"
        ..$ line       :List of 3
        .. ..$ width: num 0.756
        .. ..$ color: chr "transparent"
        .. ..$ dash : chr "solid"
        ..$ fill       : chr "toself"
        ..$ fillcolor  : chr "rgba(118,210,182,1)"
        ..$ hoveron    : chr "fills"
        ..$ name       : chr "1"
        ..$ legendgroup: chr "1"
        ..$ showlegend : logi TRUE
        ..$ xaxis      : chr "x"
        ..$ yaxis      : chr "y"
        ..$ hoverinfo  : chr "text"
       $ :List of 14
        ..$ x          : num 1
        ..$ y          : 'mapped_discrete' num 1
        ..$ text       : chr "1"
        ..$ hovertext  : chr "<b> Color number 1: 1 (#76d2b6)</b>"
        ..$ textfont   :List of 2
        .. ..$ size : num 14.6
        .. ..$ color: chr "rgba(255,255,255,1)"
        ..$ type       : chr "scatter"
        ..$ mode       : chr "text"
        ..$ hoveron    : chr "points"
        ..$ name       : chr "1"
        ..$ legendgroup: chr "1"
        ..$ showlegend : logi FALSE
        ..$ xaxis      : chr "x"
        ..$ yaxis      : chr "y"
        ..$ hoverinfo  : chr "text"

