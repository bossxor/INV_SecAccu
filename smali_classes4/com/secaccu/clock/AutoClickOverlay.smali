.class public final Lcom/secaccu/clock/AutoClickOverlay;
.super Ljava/lang/Object;
.source "AutoClickOverlay.java"


# static fields
.field public static final INSTANCE:Lcom/secaccu/clock/AutoClickOverlay;


# instance fields
.field private barBottom:I

.field private markerParams:Landroid/view/WindowManager$LayoutParams;

.field private markerView:Landroid/view/View;

.field private pickerView:Landroid/view/View;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/secaccu/clock/AutoClickOverlay;

    invoke-direct {v0}, Lcom/secaccu/clock/AutoClickOverlay;-><init>()V

    sput-object v0, Lcom/secaccu/clock/AutoClickOverlay;->INSTANCE:Lcom/secaccu/clock/AutoClickOverlay;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/secaccu/clock/AutoClickOverlay;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/secaccu/clock/AutoClickOverlay;->barBottom:I

    return p0
.end method

.method private static dp(Landroid/content/Context;I)I
    .locals 0

    .line 244
    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private ensureWm(Landroid/content/Context;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->windowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 214
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay;->windowManager:Landroid/view/WindowManager;

    .line 216
    :cond_0
    return-void
.end method

.method private static overlayType()I
    .locals 1

    .line 237
    nop

    .line 238
    const/16 v0, 0x7f6

    return v0
.end method

.method private removeView(Landroid/view/View;)V
    .locals 1

    .line 219
    if-nez p1, :cond_0

    .line 220
    return-void

    .line 222
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/secaccu/clock/AutoClickOverlay;->ensureWm(Landroid/content/Context;)V

    .line 223
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->windowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_1

    .line 224
    return-void

    .line 227
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    goto :goto_0

    .line 228
    :catchall_0
    move-exception v0

    .line 230
    :try_start_1
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 232
    goto :goto_0

    .line 231
    :catchall_1
    move-exception p1

    .line 234
    :goto_0
    return-void
.end method


# virtual methods
.method public hideAll()V
    .locals 0

    .line 148
    invoke-virtual {p0}, Lcom/secaccu/clock/AutoClickOverlay;->hidePicker()V

    .line 149
    invoke-virtual {p0}, Lcom/secaccu/clock/AutoClickOverlay;->hideMarker()V

    .line 150
    return-void
.end method

.method public hideMarker()V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/secaccu/clock/AutoClickOverlay;->removeView(Landroid/view/View;)V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerView:Landroid/view/View;

    .line 201
    iput-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerParams:Landroid/view/WindowManager$LayoutParams;

    .line 202
    return-void
.end method

.method public hidePicker()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->pickerView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/secaccu/clock/AutoClickOverlay;->removeView(Landroid/view/View;)V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->pickerView:Landroid/view/View;

    .line 145
    return-void
.end method

.method public showMarker(Landroid/content/Context;FF)V
    .locals 9

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 154
    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    return-void

    .line 157
    :cond_0
    sget-object v0, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v0, p1}, Lcom/secaccu/clock/AutoClickEngine;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/secaccu/clock/AutoClickOverlay;->hideMarker()V

    .line 159
    return-void

    .line 161
    :cond_1
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickOverlay;->ensureWm(Landroid/content/Context;)V

    .line 162
    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result v0

    .line 163
    iget-object v1, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerView:Landroid/view/View;

    const/4 v7, 0x2

    if-nez v1, :cond_2

    .line 164
    new-instance v8, Landroid/view/View;

    invoke-direct {v8, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 165
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 166
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 167
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 168
    invoke-static {p1, v7}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result p1

    const v2, -0x1f830030

    invoke-virtual {v1, p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 169
    invoke-virtual {v8, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 170
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    .line 173
    invoke-static {}, Lcom/secaccu/clock/AutoClickOverlay;->overlayType()I

    move-result v4

    const/16 v5, 0x318

    const/4 v6, -0x3

    move-object v1, p1

    move v2, v0

    move v3, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 179
    const v1, 0x800033

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 180
    iput-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerParams:Landroid/view/WindowManager$LayoutParams;

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/secaccu/clock/AutoClickOverlay;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v8, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iput-object v8, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    goto :goto_0

    .line 184
    :catchall_0
    move-exception p1

    .line 185
    return-void

    .line 188
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 189
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    div-int/2addr v0, v7

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 190
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 192
    :try_start_1
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerView:Landroid/view/View;

    iget-object p3, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 194
    goto :goto_1

    .line 193
    :catchall_1
    move-exception p1

    .line 196
    :cond_3
    :goto_1
    return-void
.end method

.method public startPicker(Landroid/content/Context;)V
    .locals 10

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 31
    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "string"

    if-nez v0, :cond_0

    .line 32
    sget-object v0, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    .line 34
    const-string v2, "auto_click_need_overlay"

    invoke-static {p1, v2, v1}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-virtual {v0, p1, v1}, Lcom/secaccu/clock/AutoClickEngine;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    return-void

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/secaccu/clock/AutoClickOverlay;->hideAll()V

    .line 38
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickOverlay;->ensureWm(Landroid/content/Context;)V

    .line 40
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const v2, 0x440b1020

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 43
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 45
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 46
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 47
    const v5, -0xdeae3d2

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 48
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 49
    const/16 v4, 0xc

    invoke-static {p1, v4}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result v5

    .line 50
    const/16 v6, 0x24

    invoke-static {p1, v6}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v2, v5, v6, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 52
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 53
    const-string v6, "auto_click_picker_hint"

    invoke-static {p1, v6, v1}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const v6, -0xb0801

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    const/high16 v6, 0x41500000    # 13.0f

    const/4 v7, 0x2

    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 56
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, -0x2

    invoke-direct {v6, v3, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 57
    const/16 v8, 0x8

    invoke-static {p1, v8}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 58
    invoke-virtual {v2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 61
    const-string v6, "auto_click_close"

    invoke-static {p1, v6, v1}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const v1, -0xf4efe0

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v5, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 64
    const/16 v1, 0x12

    invoke-static {p1, v1}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result v6

    const/16 v7, 0xa

    invoke-static {p1, v7}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result v8

    invoke-static {p1, v1}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p1, v7}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v5, v6, v8, v1, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 65
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 66
    const v6, -0x830030

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 67
    invoke-static {p1, v4}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 68
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 69
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 70
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 71
    new-instance v1, Lcom/secaccu/clock/AutoClickOverlay$1;

    invoke-direct {v1, p0}, Lcom/secaccu/clock/AutoClickOverlay$1;-><init>(Lcom/secaccu/clock/AutoClickOverlay;)V

    .line 77
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    new-instance v1, Lcom/secaccu/clock/AutoClickOverlay$2;

    invoke-direct {v1, p0}, Lcom/secaccu/clock/AutoClickOverlay$2;-><init>(Lcom/secaccu/clock/AutoClickOverlay;)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 89
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    nop

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 94
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 92
    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 95
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/secaccu/clock/AutoClickOverlay;->barBottom:I

    .line 96
    const/16 v3, 0x48

    invoke-static {p1, v3}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 97
    invoke-static {p1, v3}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/secaccu/clock/AutoClickOverlay;->barBottom:I

    .line 100
    :cond_1
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/16 v4, 0x30

    invoke-direct {v1, v3, v9, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    new-instance v1, Lcom/secaccu/clock/AutoClickOverlay$3;

    invoke-direct {v1, p0, p1}, Lcom/secaccu/clock/AutoClickOverlay$3;-><init>(Lcom/secaccu/clock/AutoClickOverlay;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 127
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x1

    .line 130
    invoke-static {}, Lcom/secaccu/clock/AutoClickOverlay;->overlayType()I

    move-result v5

    const/16 v6, 0x300

    const/4 v7, -0x3

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 134
    const v1, 0x800033

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/secaccu/clock/AutoClickOverlay;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iput-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->pickerView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    goto :goto_0

    .line 138
    :catchall_0
    move-exception p1

    .line 140
    :goto_0
    return-void
.end method

.method public syncMarker(Landroid/content/Context;)V
    .locals 2

    .line 205
    sget-object v0, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v0, p1}, Lcom/secaccu/clock/AutoClickEngine;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v0, p1}, Lcom/secaccu/clock/AutoClickEngine;->hasPosition(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    sget-object v0, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v0, p1}, Lcom/secaccu/clock/AutoClickEngine;->getX(Landroid/content/Context;)F

    move-result v0

    sget-object v1, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v1, p1}, Lcom/secaccu/clock/AutoClickEngine;->getY(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/secaccu/clock/AutoClickOverlay;->showMarker(Landroid/content/Context;FF)V

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/secaccu/clock/AutoClickOverlay;->hideMarker()V

    .line 210
    :goto_0
    return-void
.end method
