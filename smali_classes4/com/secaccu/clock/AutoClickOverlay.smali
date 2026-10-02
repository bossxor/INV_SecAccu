.class public final Lcom/secaccu/clock/AutoClickOverlay;
.super Ljava/lang/Object;
.source "AutoClickOverlay.java"


# static fields
.field public static final INSTANCE:Lcom/secaccu/clock/AutoClickOverlay;


# instance fields
.field private markerParams:Landroid/view/WindowManager$LayoutParams;

.field private markerView:Landroid/view/View;

.field private pickerHint:Landroid/widget/TextView;

.field private pickerView:Landroid/view/View;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/secaccu/clock/AutoClickOverlay;

    invoke-direct {v0}, Lcom/secaccu/clock/AutoClickOverlay;-><init>()V

    sput-object v0, Lcom/secaccu/clock/AutoClickOverlay;->INSTANCE:Lcom/secaccu/clock/AutoClickOverlay;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/secaccu/clock/AutoClickOverlay;)Landroid/widget/TextView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/secaccu/clock/AutoClickOverlay;->pickerHint:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/secaccu/clock/AutoClickOverlay;Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickOverlay;->finishPicker(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/secaccu/clock/AutoClickOverlay;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static synthetic access$300(Lcom/secaccu/clock/AutoClickOverlay;)Landroid/view/View;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/secaccu/clock/AutoClickOverlay;)Landroid/view/WindowManager;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/secaccu/clock/AutoClickOverlay;->windowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method private static dp(Landroid/content/Context;I)I
    .locals 0

    .line 249
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

    .line 218
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->windowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 219
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay;->windowManager:Landroid/view/WindowManager;

    .line 221
    :cond_0
    return-void
.end method

.method private finishPicker(Landroid/content/Context;)V
    .locals 2

    .line 109
    invoke-virtual {p0}, Lcom/secaccu/clock/AutoClickOverlay;->hidePicker()V

    .line 110
    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AutoClickOverlay;->syncMarker(Landroid/content/Context;)V

    .line 112
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_0

    .line 114
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 115
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_0
    goto :goto_0

    .line 117
    :catchall_0
    move-exception p1

    .line 119
    :goto_0
    return-void
.end method

.method private static overlayType()I
    .locals 1

    .line 242
    nop

    .line 243
    const/16 v0, 0x7f6

    return v0
.end method

.method private removeView(Landroid/view/View;)V
    .locals 1

    .line 224
    if-nez p1, :cond_0

    .line 225
    return-void

    .line 227
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/secaccu/clock/AutoClickOverlay;->ensureWm(Landroid/content/Context;)V

    .line 228
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->windowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_1

    .line 229
    return-void

    .line 232
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    goto :goto_0

    .line 233
    :catchall_0
    move-exception v0

    .line 235
    :try_start_1
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 237
    goto :goto_0

    .line 236
    :catchall_1
    move-exception p1

    .line 239
    :goto_0
    return-void
.end method


# virtual methods
.method public hideAll()V
    .locals 0

    .line 122
    invoke-virtual {p0}, Lcom/secaccu/clock/AutoClickOverlay;->hidePicker()V

    .line 123
    invoke-virtual {p0}, Lcom/secaccu/clock/AutoClickOverlay;->hideMarker()V

    .line 124
    return-void
.end method

.method public hideMarker()V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/secaccu/clock/AutoClickOverlay;->removeView(Landroid/view/View;)V

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerView:Landroid/view/View;

    .line 206
    iput-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerParams:Landroid/view/WindowManager$LayoutParams;

    .line 207
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
    iput-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->pickerHint:Landroid/widget/TextView;

    .line 106
    return-void
.end method

.method public showMarker(Landroid/content/Context;FF)V
    .locals 8

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 128
    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->pickerView:Landroid/view/View;

    if-nez v0, :cond_1

    sget-object v0, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v0, p1}, Lcom/secaccu/clock/AutoClickEngine;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/secaccu/clock/AutoClickOverlay;->hideMarker()V

    .line 133
    return-void

    .line 135
    :cond_1
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickOverlay;->ensureWm(Landroid/content/Context;)V

    .line 136
    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result v2

    .line 137
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerView:Landroid/view/View;

    const/4 v7, 0x2

    if-nez v0, :cond_2

    .line 138
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 139
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 140
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 141
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 142
    invoke-static {p1, v7}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result v3

    const v4, -0x1f830030

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 144
    new-instance v1, Lcom/secaccu/clock/AutoClickOverlay$2;

    invoke-direct {v1, p0, p1}, Lcom/secaccu/clock/AutoClickOverlay$2;-><init>(Lcom/secaccu/clock/AutoClickOverlay;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 176
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    .line 179
    invoke-static {}, Lcom/secaccu/clock/AutoClickOverlay;->overlayType()I

    move-result v4

    const/16 v5, 0x308

    const/4 v6, -0x3

    move v3, v2

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 184
    const p1, 0x800033

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 185
    iput-object v1, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerParams:Landroid/view/WindowManager$LayoutParams;

    .line 187
    :try_start_0
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay;->windowManager:Landroid/view/WindowManager;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    iput-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    .line 190
    return-void

    .line 193
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerView:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 194
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    div-int/2addr v2, v7

    sub-int/2addr p2, v2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 195
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    sub-int/2addr p2, v2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 197
    :try_start_1
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerView:Landroid/view/View;

    iget-object p3, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 199
    goto :goto_1

    .line 198
    :catchall_1
    move-exception v0

    .line 201
    :cond_3
    :goto_1
    return-void
.end method

.method public startPicker(Landroid/content/Context;)Z
    .locals 9

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 33
    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "string"

    if-nez v0, :cond_0

    .line 34
    sget-object v0, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    .line 36
    const-string v3, "auto_click_need_overlay"

    invoke-static {p1, v3, v2}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-virtual {v0, p1, v2}, Lcom/secaccu/clock/AutoClickEngine;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    return v1

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/secaccu/clock/AutoClickOverlay;->hideAll()V

    .line 40
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickOverlay;->ensureWm(Landroid/content/Context;)V

    .line 42
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    const/high16 v3, 0x1a000000

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 45
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 46
    const-string v4, "auto_click_picker_hint"

    invoke-static {p1, v4, v2}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    const v2, -0xb0801

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    const/4 v2, 0x2

    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 49
    const/16 v2, 0xc

    invoke-static {p1, v2}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result v4

    const/4 v5, 0x6

    invoke-static {p1, v5}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result v6

    invoke-static {p1, v2}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result v7

    invoke-static {p1, v5}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v3, v4, v6, v7, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 50
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 51
    const v5, -0x33eae3d2    # -3.9088312E7f

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 52
    invoke-static {p1, v2}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 53
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 54
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x31

    const/4 v5, -0x2

    invoke-direct {v2, v5, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 58
    const/16 v4, 0x28

    invoke-static {p1, v4}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 59
    invoke-virtual {v0, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    iput-object v3, p0, Lcom/secaccu/clock/AutoClickOverlay;->pickerHint:Landroid/widget/TextView;

    .line 62
    new-instance v2, Lcom/secaccu/clock/AutoClickOverlay$1;

    invoke-direct {v2, p0, p1}, Lcom/secaccu/clock/AutoClickOverlay$1;-><init>(Lcom/secaccu/clock/AutoClickOverlay;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 85
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    .line 88
    invoke-static {}, Lcom/secaccu/clock/AutoClickOverlay;->overlayType()I

    move-result v6

    const/16 v7, 0x300

    const/4 v8, -0x3

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 92
    const p1, 0x800033

    iput p1, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 94
    :try_start_0
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay;->windowManager:Landroid/view/WindowManager;

    invoke-interface {p1, v0, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iput-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->pickerView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    const/4 p1, 0x1

    return p1

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    return v1
.end method

.method public syncMarker(Landroid/content/Context;)V
    .locals 2

    .line 210
    sget-object v0, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v0, p1}, Lcom/secaccu/clock/AutoClickEngine;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v0, p1}, Lcom/secaccu/clock/AutoClickEngine;->hasPosition(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    sget-object v0, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v0, p1}, Lcom/secaccu/clock/AutoClickEngine;->getX(Landroid/content/Context;)F

    move-result v0

    sget-object v1, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v1, p1}, Lcom/secaccu/clock/AutoClickEngine;->getY(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/secaccu/clock/AutoClickOverlay;->showMarker(Landroid/content/Context;FF)V

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/secaccu/clock/AutoClickOverlay;->hideMarker()V

    .line 215
    :goto_0
    return-void
.end method
