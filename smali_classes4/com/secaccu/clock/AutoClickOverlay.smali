.class public final Lcom/secaccu/clock/AutoClickOverlay;
.super Ljava/lang/Object;
.source "AutoClickOverlay.java"


# static fields
.field public static final INSTANCE:Lcom/secaccu/clock/AutoClickOverlay;


# instance fields
.field private markerParams:Landroid/view/WindowManager$LayoutParams;

.field private markerView:Landroid/view/View;

.field private pickerView:Landroid/view/View;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/secaccu/clock/AutoClickOverlay;

    invoke-direct {v0}, Lcom/secaccu/clock/AutoClickOverlay;-><init>()V

    sput-object v0, Lcom/secaccu/clock/AutoClickOverlay;->INSTANCE:Lcom/secaccu/clock/AutoClickOverlay;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dp(Landroid/content/Context;I)I
    .locals 0

    .line 186
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

    .line 164
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->windowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 165
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay;->windowManager:Landroid/view/WindowManager;

    .line 167
    :cond_0
    return-void
.end method

.method private static overlayType()I
    .locals 1

    .line 179
    nop

    .line 180
    const/16 v0, 0x7f6

    return v0
.end method

.method private removeView(Landroid/view/View;)V
    .locals 1

    .line 170
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 172
    :try_start_0
    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    goto :goto_0

    .line 173
    :catchall_0
    move-exception p1

    .line 176
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public hideMarker()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/secaccu/clock/AutoClickOverlay;->removeView(Landroid/view/View;)V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerView:Landroid/view/View;

    .line 152
    iput-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerParams:Landroid/view/WindowManager$LayoutParams;

    .line 153
    return-void
.end method

.method public hidePicker()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->pickerView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/secaccu/clock/AutoClickOverlay;->removeView(Landroid/view/View;)V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->pickerView:Landroid/view/View;

    .line 105
    return-void
.end method

.method public showMarker(Landroid/content/Context;FF)V
    .locals 9

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 109
    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    return-void

    .line 112
    :cond_0
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickOverlay;->ensureWm(Landroid/content/Context;)V

    .line 113
    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result v0

    .line 114
    iget-object v1, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerView:Landroid/view/View;

    const/4 v7, 0x2

    if-nez v1, :cond_1

    .line 115
    new-instance v8, Landroid/view/View;

    invoke-direct {v8, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 116
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 117
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 118
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 119
    invoke-static {p1, v7}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result p1

    const v2, -0x1f830030

    invoke-virtual {v1, p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 120
    invoke-virtual {v8, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 121
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    .line 124
    invoke-static {}, Lcom/secaccu/clock/AutoClickOverlay;->overlayType()I

    move-result v4

    const/16 v5, 0x318

    const/4 v6, -0x3

    move-object v1, p1

    move v2, v0

    move v3, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 130
    const v1, 0x800033

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 131
    iput-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerParams:Landroid/view/WindowManager$LayoutParams;

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/secaccu/clock/AutoClickOverlay;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v8, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    iput-object v8, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    goto :goto_0

    .line 135
    :catchall_0
    move-exception p1

    .line 136
    return-void

    .line 139
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 140
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    div-int/2addr v0, v7

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 141
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 143
    :try_start_1
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerView:Landroid/view/View;

    iget-object p3, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 145
    goto :goto_1

    .line 144
    :catchall_1
    move-exception p1

    .line 147
    :cond_2
    :goto_1
    return-void
.end method

.method public startPicker(Landroid/content/Context;)V
    .locals 8

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 29
    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "string"

    if-nez v0, :cond_0

    .line 30
    sget-object v0, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    .line 32
    const-string v2, "auto_click_need_overlay"

    invoke-static {p1, v2, v1}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-virtual {v0, p1, v1}, Lcom/secaccu/clock/AutoClickEngine;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    return-void

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/secaccu/clock/AutoClickOverlay;->hidePicker()V

    .line 36
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickOverlay;->ensureWm(Landroid/content/Context;)V

    .line 37
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    const v2, 0x660b1020

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 39
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 40
    const-string v3, "auto_click_picker_hint"

    invoke-static {p1, v3, v1}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    const v3, -0xb0801

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    const/high16 v3, 0x41800000    # 16.0f

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 43
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 44
    const/16 v3, 0x14

    invoke-static {p1, v3}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result v5

    const/16 v6, 0x1c

    invoke-static {p1, v6}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result v6

    invoke-static {p1, v3}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result v3

    const/16 v7, 0x10

    invoke-static {p1, v7}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v2, v5, v6, v3, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 45
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/16 v6, 0x30

    const/4 v7, -0x2

    invoke-direct {v3, v5, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 49
    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 52
    const-string v3, "cancel"

    invoke-static {p1, v3, v1}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    const v1, -0x830030

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v2, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 55
    const/16 v1, 0x12

    invoke-static {p1, v1}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result v3

    const/16 v4, 0xc

    invoke-static {p1, v4}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-static {p1, v1}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p1, v4}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v3, v5, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 56
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x51

    invoke-direct {v1, v7, v7, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 60
    const/16 v3, 0x24

    invoke-static {p1, v3}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 61
    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance v1, Lcom/secaccu/clock/AutoClickOverlay$1;

    invoke-direct {v1, p0}, Lcom/secaccu/clock/AutoClickOverlay$1;-><init>(Lcom/secaccu/clock/AutoClickOverlay;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    new-instance v1, Lcom/secaccu/clock/AutoClickOverlay$2;

    invoke-direct {v1, p0, p1}, Lcom/secaccu/clock/AutoClickOverlay$2;-><init>(Lcom/secaccu/clock/AutoClickOverlay;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 87
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    .line 90
    invoke-static {}, Lcom/secaccu/clock/AutoClickOverlay;->overlayType()I

    move-result v5

    const/16 v6, 0x300

    const/4 v7, -0x3

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 94
    const v1, 0x800033

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/secaccu/clock/AutoClickOverlay;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iput-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->pickerView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    goto :goto_0

    .line 98
    :catchall_0
    move-exception p1

    .line 100
    :goto_0
    return-void
.end method

.method public syncMarker(Landroid/content/Context;)V
    .locals 2

    .line 156
    sget-object v0, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v0, p1}, Lcom/secaccu/clock/AutoClickEngine;->hasPosition(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    sget-object v0, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v0, p1}, Lcom/secaccu/clock/AutoClickEngine;->getX(Landroid/content/Context;)F

    move-result v0

    sget-object v1, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v1, p1}, Lcom/secaccu/clock/AutoClickEngine;->getY(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/secaccu/clock/AutoClickOverlay;->showMarker(Landroid/content/Context;FF)V

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/secaccu/clock/AutoClickOverlay;->hideMarker()V

    .line 161
    :goto_0
    return-void
.end method
