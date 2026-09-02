.class public final Lcom/secaccu/clock/databinding/ActivityMainBinding;
.super Ljava/lang/Object;
.source "ActivityMainBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final actionsRow:Landroid/widget/LinearLayout;

.field public final alarmHint:Landroid/widget/TextView;

.field public final alarmLeadLabel:Landroid/widget/TextView;

.field public final alarmLeadSlider:Lcom/google/android/material/slider/Slider;

.field public final alarmSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

.field public final clockCard:Lcom/google/android/material/card/MaterialCardView;

.field public final clockLabel:Landroid/widget/TextView;

.field public final clockMillis:Landroid/widget/TextView;

.field public final clockTime:Landroid/widget/TextView;

.field public final headerRow:Landroid/widget/LinearLayout;

.field public final metaText:Landroid/widget/TextView;

.field public final openFavoriteButton:Lcom/google/android/material/button/MaterialButton;

.field public final overlayButton:Lcom/google/android/material/button/MaterialButton;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final selectedSite:Landroid/widget/TextView;

.field public final selectedUrl:Landroid/widget/TextView;

.field public final siteCard:Lcom/google/android/material/card/MaterialCardView;

.field public final siteList:Lcom/google/android/material/chip/ChipGroup;

.field public final siteListScroll:Landroid/widget/ScrollView;

.field public final statusText:Landroid/widget/TextView;

.field public final subtitle:Landroid/widget/TextView;

.field public final syncButton:Lcom/google/android/material/button/MaterialButton;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/slider/Slider;Lcom/google/android/material/materialswitch/MaterialSwitch;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/chip/ChipGroup;Landroid/widget/ScrollView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;)V
    .locals 16
    .param p1, "rootView"    # Landroidx/core/widget/NestedScrollView;
    .param p2, "actionsRow"    # Landroid/widget/LinearLayout;
    .param p3, "alarmHint"    # Landroid/widget/TextView;
    .param p4, "alarmLeadLabel"    # Landroid/widget/TextView;
    .param p5, "alarmLeadSlider"    # Lcom/google/android/material/slider/Slider;
    .param p6, "alarmSwitch"    # Lcom/google/android/material/materialswitch/MaterialSwitch;
    .param p7, "clockCard"    # Lcom/google/android/material/card/MaterialCardView;
    .param p8, "clockLabel"    # Landroid/widget/TextView;
    .param p9, "clockMillis"    # Landroid/widget/TextView;
    .param p10, "clockTime"    # Landroid/widget/TextView;
    .param p11, "headerRow"    # Landroid/widget/LinearLayout;
    .param p12, "metaText"    # Landroid/widget/TextView;
    .param p13, "openFavoriteButton"    # Lcom/google/android/material/button/MaterialButton;
    .param p14, "overlayButton"    # Lcom/google/android/material/button/MaterialButton;
    .param p15, "selectedSite"    # Landroid/widget/TextView;
    .param p16, "selectedUrl"    # Landroid/widget/TextView;
    .param p17, "siteCard"    # Lcom/google/android/material/card/MaterialCardView;
    .param p18, "siteList"    # Lcom/google/android/material/chip/ChipGroup;
    .param p19, "siteListScroll"    # Landroid/widget/ScrollView;
    .param p20, "statusText"    # Landroid/widget/TextView;
    .param p21, "subtitle"    # Landroid/widget/TextView;
    .param p22, "syncButton"    # Lcom/google/android/material/button/MaterialButton;

    .line 101
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/secaccu/clock/databinding/ActivityMainBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 103
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/secaccu/clock/databinding/ActivityMainBinding;->actionsRow:Landroid/widget/LinearLayout;

    .line 104
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/secaccu/clock/databinding/ActivityMainBinding;->alarmHint:Landroid/widget/TextView;

    .line 105
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/secaccu/clock/databinding/ActivityMainBinding;->alarmLeadLabel:Landroid/widget/TextView;

    .line 106
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/secaccu/clock/databinding/ActivityMainBinding;->alarmLeadSlider:Lcom/google/android/material/slider/Slider;

    .line 107
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/secaccu/clock/databinding/ActivityMainBinding;->alarmSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 108
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/secaccu/clock/databinding/ActivityMainBinding;->clockCard:Lcom/google/android/material/card/MaterialCardView;

    .line 109
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/secaccu/clock/databinding/ActivityMainBinding;->clockLabel:Landroid/widget/TextView;

    .line 110
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/secaccu/clock/databinding/ActivityMainBinding;->clockMillis:Landroid/widget/TextView;

    .line 111
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/secaccu/clock/databinding/ActivityMainBinding;->clockTime:Landroid/widget/TextView;

    .line 112
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/secaccu/clock/databinding/ActivityMainBinding;->headerRow:Landroid/widget/LinearLayout;

    .line 113
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/secaccu/clock/databinding/ActivityMainBinding;->metaText:Landroid/widget/TextView;

    .line 114
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/secaccu/clock/databinding/ActivityMainBinding;->openFavoriteButton:Lcom/google/android/material/button/MaterialButton;

    .line 115
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/secaccu/clock/databinding/ActivityMainBinding;->overlayButton:Lcom/google/android/material/button/MaterialButton;

    .line 116
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/secaccu/clock/databinding/ActivityMainBinding;->selectedSite:Landroid/widget/TextView;

    .line 117
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/secaccu/clock/databinding/ActivityMainBinding;->selectedUrl:Landroid/widget/TextView;

    .line 118
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/secaccu/clock/databinding/ActivityMainBinding;->siteCard:Lcom/google/android/material/card/MaterialCardView;

    .line 119
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/secaccu/clock/databinding/ActivityMainBinding;->siteList:Lcom/google/android/material/chip/ChipGroup;

    .line 120
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/secaccu/clock/databinding/ActivityMainBinding;->siteListScroll:Landroid/widget/ScrollView;

    .line 121
    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/secaccu/clock/databinding/ActivityMainBinding;->statusText:Landroid/widget/TextView;

    .line 122
    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/secaccu/clock/databinding/ActivityMainBinding;->subtitle:Landroid/widget/TextView;

    .line 123
    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/secaccu/clock/databinding/ActivityMainBinding;->syncButton:Lcom/google/android/material/button/MaterialButton;

    .line 124
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/secaccu/clock/databinding/ActivityMainBinding;
    .locals 47
    .param p0, "rootView"    # Landroid/view/View;

    .line 153
    move-object/from16 v0, p0

    sget v1, Lcom/secaccu/clock/R$id;->actionsRow:I

    .line 154
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 155
    .local v2, "actionsRow":Landroid/widget/LinearLayout;
    if-eqz v2, :cond_14

    .line 159
    sget v1, Lcom/secaccu/clock/R$id;->alarmHint:I

    .line 160
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Landroid/widget/TextView;

    .line 161
    .local v26, "alarmHint":Landroid/widget/TextView;
    if-eqz v26, :cond_13

    .line 165
    sget v1, Lcom/secaccu/clock/R$id;->alarmLeadLabel:I

    .line 166
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v27, v3

    check-cast v27, Landroid/widget/TextView;

    .line 167
    .local v27, "alarmLeadLabel":Landroid/widget/TextView;
    if-eqz v27, :cond_12

    .line 171
    sget v1, Lcom/secaccu/clock/R$id;->alarmLeadSlider:I

    .line 172
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v28, v3

    check-cast v28, Lcom/google/android/material/slider/Slider;

    .line 173
    .local v28, "alarmLeadSlider":Lcom/google/android/material/slider/Slider;
    if-eqz v28, :cond_11

    .line 177
    sget v1, Lcom/secaccu/clock/R$id;->alarmSwitch:I

    .line 178
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v29, v3

    check-cast v29, Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 179
    .local v29, "alarmSwitch":Lcom/google/android/material/materialswitch/MaterialSwitch;
    if-eqz v29, :cond_10

    .line 183
    sget v1, Lcom/secaccu/clock/R$id;->clockCard:I

    .line 184
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v30, v3

    check-cast v30, Lcom/google/android/material/card/MaterialCardView;

    .line 185
    .local v30, "clockCard":Lcom/google/android/material/card/MaterialCardView;
    if-eqz v30, :cond_f

    .line 189
    sget v1, Lcom/secaccu/clock/R$id;->clockLabel:I

    .line 190
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v31, v3

    check-cast v31, Landroid/widget/TextView;

    .line 191
    .local v31, "clockLabel":Landroid/widget/TextView;
    if-eqz v31, :cond_e

    .line 195
    sget v1, Lcom/secaccu/clock/R$id;->clockMillis:I

    .line 196
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v32, v3

    check-cast v32, Landroid/widget/TextView;

    .line 197
    .local v32, "clockMillis":Landroid/widget/TextView;
    if-eqz v32, :cond_d

    .line 201
    sget v1, Lcom/secaccu/clock/R$id;->clockTime:I

    .line 202
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v33, v3

    check-cast v33, Landroid/widget/TextView;

    .line 203
    .local v33, "clockTime":Landroid/widget/TextView;
    if-eqz v33, :cond_c

    .line 207
    sget v1, Lcom/secaccu/clock/R$id;->headerRow:I

    .line 208
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v34, v3

    check-cast v34, Landroid/widget/LinearLayout;

    .line 209
    .local v34, "headerRow":Landroid/widget/LinearLayout;
    if-eqz v34, :cond_b

    .line 213
    sget v1, Lcom/secaccu/clock/R$id;->metaText:I

    .line 214
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v35, v3

    check-cast v35, Landroid/widget/TextView;

    .line 215
    .local v35, "metaText":Landroid/widget/TextView;
    if-eqz v35, :cond_a

    .line 219
    sget v1, Lcom/secaccu/clock/R$id;->openFavoriteButton:I

    .line 220
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v36, v3

    check-cast v36, Lcom/google/android/material/button/MaterialButton;

    .line 221
    .local v36, "openFavoriteButton":Lcom/google/android/material/button/MaterialButton;
    if-eqz v36, :cond_9

    .line 225
    sget v1, Lcom/secaccu/clock/R$id;->overlayButton:I

    .line 226
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v37, v3

    check-cast v37, Lcom/google/android/material/button/MaterialButton;

    .line 227
    .local v37, "overlayButton":Lcom/google/android/material/button/MaterialButton;
    if-eqz v37, :cond_8

    .line 231
    sget v1, Lcom/secaccu/clock/R$id;->selectedSite:I

    .line 232
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v38, v3

    check-cast v38, Landroid/widget/TextView;

    .line 233
    .local v38, "selectedSite":Landroid/widget/TextView;
    if-eqz v38, :cond_7

    .line 237
    sget v1, Lcom/secaccu/clock/R$id;->selectedUrl:I

    .line 238
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v39, v3

    check-cast v39, Landroid/widget/TextView;

    .line 239
    .local v39, "selectedUrl":Landroid/widget/TextView;
    if-eqz v39, :cond_6

    .line 243
    sget v1, Lcom/secaccu/clock/R$id;->siteCard:I

    .line 244
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v40, v3

    check-cast v40, Lcom/google/android/material/card/MaterialCardView;

    .line 245
    .local v40, "siteCard":Lcom/google/android/material/card/MaterialCardView;
    if-eqz v40, :cond_5

    .line 249
    sget v1, Lcom/secaccu/clock/R$id;->siteList:I

    .line 250
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v41, v3

    check-cast v41, Lcom/google/android/material/chip/ChipGroup;

    .line 251
    .local v41, "siteList":Lcom/google/android/material/chip/ChipGroup;
    if-eqz v41, :cond_4

    .line 255
    sget v1, Lcom/secaccu/clock/R$id;->siteListScroll:I

    .line 256
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v42, v3

    check-cast v42, Landroid/widget/ScrollView;

    .line 257
    .local v42, "siteListScroll":Landroid/widget/ScrollView;
    if-eqz v42, :cond_3

    .line 261
    sget v1, Lcom/secaccu/clock/R$id;->statusText:I

    .line 262
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v43, v3

    check-cast v43, Landroid/widget/TextView;

    .line 263
    .local v43, "statusText":Landroid/widget/TextView;
    if-eqz v43, :cond_2

    .line 267
    sget v1, Lcom/secaccu/clock/R$id;->subtitle:I

    .line 268
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v44, v3

    check-cast v44, Landroid/widget/TextView;

    .line 269
    .local v44, "subtitle":Landroid/widget/TextView;
    if-eqz v44, :cond_1

    .line 273
    sget v1, Lcom/secaccu/clock/R$id;->syncButton:I

    .line 274
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v45, v3

    check-cast v45, Lcom/google/android/material/button/MaterialButton;

    .line 275
    .local v45, "syncButton":Lcom/google/android/material/button/MaterialButton;
    if-eqz v45, :cond_0

    .line 279
    new-instance v46, Lcom/secaccu/clock/databinding/ActivityMainBinding;

    move-object/from16 v3, v46

    move-object v4, v0

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    move-object v5, v2

    move-object/from16 v6, v26

    move-object/from16 v7, v27

    move-object/from16 v8, v28

    move-object/from16 v9, v29

    move-object/from16 v10, v30

    move-object/from16 v11, v31

    move-object/from16 v12, v32

    move-object/from16 v13, v33

    move-object/from16 v14, v34

    move-object/from16 v15, v35

    move-object/from16 v16, v36

    move-object/from16 v17, v37

    move-object/from16 v18, v38

    move-object/from16 v19, v39

    move-object/from16 v20, v40

    move-object/from16 v21, v41

    move-object/from16 v22, v42

    move-object/from16 v23, v43

    move-object/from16 v24, v44

    move-object/from16 v25, v45

    invoke-direct/range {v3 .. v25}, Lcom/secaccu/clock/databinding/ActivityMainBinding;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/slider/Slider;Lcom/google/android/material/materialswitch/MaterialSwitch;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/chip/ChipGroup;Landroid/widget/ScrollView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;)V

    return-object v46

    .line 276
    :cond_0
    goto :goto_0

    .line 270
    .end local v45    # "syncButton":Lcom/google/android/material/button/MaterialButton;
    :cond_1
    goto :goto_0

    .line 264
    .end local v44    # "subtitle":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 258
    .end local v43    # "statusText":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 252
    .end local v42    # "siteListScroll":Landroid/widget/ScrollView;
    :cond_4
    goto :goto_0

    .line 246
    .end local v41    # "siteList":Lcom/google/android/material/chip/ChipGroup;
    :cond_5
    goto :goto_0

    .line 240
    .end local v40    # "siteCard":Lcom/google/android/material/card/MaterialCardView;
    :cond_6
    goto :goto_0

    .line 234
    .end local v39    # "selectedUrl":Landroid/widget/TextView;
    :cond_7
    goto :goto_0

    .line 228
    .end local v38    # "selectedSite":Landroid/widget/TextView;
    :cond_8
    goto :goto_0

    .line 222
    .end local v37    # "overlayButton":Lcom/google/android/material/button/MaterialButton;
    :cond_9
    goto :goto_0

    .line 216
    .end local v36    # "openFavoriteButton":Lcom/google/android/material/button/MaterialButton;
    :cond_a
    goto :goto_0

    .line 210
    .end local v35    # "metaText":Landroid/widget/TextView;
    :cond_b
    goto :goto_0

    .line 204
    .end local v34    # "headerRow":Landroid/widget/LinearLayout;
    :cond_c
    goto :goto_0

    .line 198
    .end local v33    # "clockTime":Landroid/widget/TextView;
    :cond_d
    goto :goto_0

    .line 192
    .end local v32    # "clockMillis":Landroid/widget/TextView;
    :cond_e
    goto :goto_0

    .line 186
    .end local v31    # "clockLabel":Landroid/widget/TextView;
    :cond_f
    goto :goto_0

    .line 180
    .end local v30    # "clockCard":Lcom/google/android/material/card/MaterialCardView;
    :cond_10
    goto :goto_0

    .line 174
    .end local v29    # "alarmSwitch":Lcom/google/android/material/materialswitch/MaterialSwitch;
    :cond_11
    goto :goto_0

    .line 168
    .end local v28    # "alarmLeadSlider":Lcom/google/android/material/slider/Slider;
    :cond_12
    goto :goto_0

    .line 162
    .end local v27    # "alarmLeadLabel":Landroid/widget/TextView;
    :cond_13
    goto :goto_0

    .line 156
    .end local v26    # "alarmHint":Landroid/widget/TextView;
    :cond_14
    nop

    .line 284
    .end local v2    # "actionsRow":Landroid/widget/LinearLayout;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/secaccu/clock/databinding/ActivityMainBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 134
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/secaccu/clock/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/secaccu/clock/databinding/ActivityMainBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/secaccu/clock/databinding/ActivityMainBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 140
    sget v0, Lcom/secaccu/clock/R$layout;->activity_main:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 141
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 142
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 144
    :cond_0
    invoke-static {v0}, Lcom/secaccu/clock/databinding/ActivityMainBinding;->bind(Landroid/view/View;)Lcom/secaccu/clock/databinding/ActivityMainBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/secaccu/clock/databinding/ActivityMainBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/secaccu/clock/databinding/ActivityMainBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
