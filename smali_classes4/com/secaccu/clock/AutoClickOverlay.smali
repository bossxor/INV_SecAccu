.class public final Lcom/secaccu/clock/AutoClickOverlay;
.super Ljava/lang/Object;
.source "AutoClickOverlay.java"


# static fields
.field public static final INSTANCE:Lcom/secaccu/clock/AutoClickOverlay;


# instance fields
.field private barBottom:I

.field private curX:F

.field private curY:F

.field private markerParams:Landroid/view/WindowManager$LayoutParams;

.field private markerView:Landroid/view/View;

.field private offX:F

.field private offY:F

.field private pickerHint:Landroid/widget/TextView;

.field private pickerView:Landroid/view/View;

.field private tracking:Z

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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/secaccu/clock/AutoClickOverlay;Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickOverlay;->finishPicker(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/secaccu/clock/AutoClickOverlay;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/secaccu/clock/AutoClickOverlay;->barBottom:I

    return p0
.end method

.method static synthetic access$200(Lcom/secaccu/clock/AutoClickOverlay;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/secaccu/clock/AutoClickOverlay;->tracking:Z

    return p0
.end method

.method static synthetic access$202(Lcom/secaccu/clock/AutoClickOverlay;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/secaccu/clock/AutoClickOverlay;->tracking:Z

    return p1
.end method

.method static synthetic access$300(Lcom/secaccu/clock/AutoClickOverlay;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/secaccu/clock/AutoClickOverlay;->curX:F

    return p0
.end method

.method static synthetic access$302(Lcom/secaccu/clock/AutoClickOverlay;F)F
    .locals 0

    .line 19
    iput p1, p0, Lcom/secaccu/clock/AutoClickOverlay;->curX:F

    return p1
.end method

.method static synthetic access$316(Lcom/secaccu/clock/AutoClickOverlay;F)F
    .locals 1

    .line 19
    iget v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->curX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->curX:F

    return v0
.end method

.method static synthetic access$400(Lcom/secaccu/clock/AutoClickOverlay;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/secaccu/clock/AutoClickOverlay;->curY:F

    return p0
.end method

.method static synthetic access$402(Lcom/secaccu/clock/AutoClickOverlay;F)F
    .locals 0

    .line 19
    iput p1, p0, Lcom/secaccu/clock/AutoClickOverlay;->curY:F

    return p1
.end method

.method static synthetic access$416(Lcom/secaccu/clock/AutoClickOverlay;F)F
    .locals 1

    .line 19
    iget v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->curY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->curY:F

    return v0
.end method

.method static synthetic access$500(Landroid/content/Context;I)I
    .locals 0

    .line 19
    invoke-static {p0, p1}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/secaccu/clock/AutoClickOverlay;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/secaccu/clock/AutoClickOverlay;->offX:F

    return p0
.end method

.method static synthetic access$602(Lcom/secaccu/clock/AutoClickOverlay;F)F
    .locals 0

    .line 19
    iput p1, p0, Lcom/secaccu/clock/AutoClickOverlay;->offX:F

    return p1
.end method

.method static synthetic access$700(Lcom/secaccu/clock/AutoClickOverlay;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/secaccu/clock/AutoClickOverlay;->offY:F

    return p0
.end method

.method static synthetic access$702(Lcom/secaccu/clock/AutoClickOverlay;F)F
    .locals 0

    .line 19
    iput p1, p0, Lcom/secaccu/clock/AutoClickOverlay;->offY:F

    return p1
.end method

.method static synthetic access$800(Lcom/secaccu/clock/AutoClickOverlay;Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickOverlay;->commit(Landroid/content/Context;)V

    return-void
.end method

.method private button(Landroid/content/Context;Ljava/lang/String;IFLjava/lang/Runnable;)Landroid/view/View;
    .locals 3

    .line 196
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 197
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    const/16 p2, 0x11

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 199
    const p2, -0xf4efe0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    const/4 p2, 0x2

    invoke-virtual {v0, p2, p4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 201
    const/16 p2, 0x12

    invoke-static {p1, p2}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result p4

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p1, p2}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p1, v1}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, p4, v2, p2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 202
    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 203
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 204
    const/16 p3, 0xc

    invoke-static {p1, p3}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 205
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 206
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 207
    new-instance p1, Lcom/secaccu/clock/AutoClickOverlay$4;

    invoke-direct {p1, p0, p5}, Lcom/secaccu/clock/AutoClickOverlay$4;-><init>(Lcom/secaccu/clock/AutoClickOverlay;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 216
    return-object v0
.end method

.method private commit(Landroid/content/Context;)V
    .locals 4

    .line 168
    sget-object v0, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    iget v1, p0, Lcom/secaccu/clock/AutoClickOverlay;->curX:F

    iget v2, p0, Lcom/secaccu/clock/AutoClickOverlay;->curY:F

    invoke-virtual {v0, p1, v1, v2}, Lcom/secaccu/clock/AutoClickEngine;->setPosition(Landroid/content/Context;FF)V

    .line 169
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->pickerHint:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->pickerHint:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v2, p1}, Lcom/secaccu/clock/AutoClickEngine;->positionLine(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  \u00b7  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 171
    const-string v2, "auto_click_picker_hint"

    const-string v3, "string"

    invoke-static {p1, v2, v3}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 170
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :cond_0
    return-void
.end method

.method private static dp(Landroid/content/Context;I)I
    .locals 0

    .line 336
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

    .line 305
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->windowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 306
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay;->windowManager:Landroid/view/WindowManager;

    .line 308
    :cond_0
    return-void
.end method

.method private finishPicker(Landroid/content/Context;)V
    .locals 2

    .line 227
    invoke-virtual {p0}, Lcom/secaccu/clock/AutoClickOverlay;->hidePicker()V

    .line 228
    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AutoClickOverlay;->syncMarker(Landroid/content/Context;)V

    .line 230
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_0

    .line 232
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 233
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :cond_0
    goto :goto_0

    .line 235
    :catchall_0
    move-exception p1

    .line 237
    :goto_0
    return-void
.end method

.method private nudge(Landroid/content/Context;Ljava/lang/String;II)Landroid/view/View;
    .locals 6

    .line 176
    new-instance v5, Lcom/secaccu/clock/AutoClickOverlay$3;

    invoke-direct {v5, p0, p1, p3, p4}, Lcom/secaccu/clock/AutoClickOverlay$3;-><init>(Lcom/secaccu/clock/AutoClickOverlay;Landroid/content/Context;II)V

    const v3, -0x221901

    const/high16 v4, 0x41900000    # 18.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/secaccu/clock/AutoClickOverlay;->button(Landroid/content/Context;Ljava/lang/String;IFLjava/lang/Runnable;)Landroid/view/View;

    move-result-object p1

    .line 188
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x2

    const/high16 p4, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-direct {p2, v0, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 189
    const/4 p3, 0x4

    invoke-static {v1, p3}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result p4

    iput p4, p2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 190
    invoke-static {v1, p3}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result p3

    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 191
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    return-object p1
.end method

.method private static overlayType()I
    .locals 1

    .line 329
    nop

    .line 330
    const/16 v0, 0x7f6

    return v0
.end method

.method private removeView(Landroid/view/View;)V
    .locals 1

    .line 311
    if-nez p1, :cond_0

    .line 312
    return-void

    .line 314
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/secaccu/clock/AutoClickOverlay;->ensureWm(Landroid/content/Context;)V

    .line 315
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->windowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_1

    .line 316
    return-void

    .line 319
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    goto :goto_0

    .line 320
    :catchall_0
    move-exception v0

    .line 322
    :try_start_1
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 324
    goto :goto_0

    .line 323
    :catchall_1
    move-exception p1

    .line 326
    :goto_0
    return-void
.end method


# virtual methods
.method public hideAll()V
    .locals 0

    .line 240
    invoke-virtual {p0}, Lcom/secaccu/clock/AutoClickOverlay;->hidePicker()V

    .line 241
    invoke-virtual {p0}, Lcom/secaccu/clock/AutoClickOverlay;->hideMarker()V

    .line 242
    return-void
.end method

.method public hideMarker()V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/secaccu/clock/AutoClickOverlay;->removeView(Landroid/view/View;)V

    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerView:Landroid/view/View;

    .line 293
    iput-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerParams:Landroid/view/WindowManager$LayoutParams;

    .line 294
    return-void
.end method

.method public hidePicker()V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->pickerView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/secaccu/clock/AutoClickOverlay;->removeView(Landroid/view/View;)V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->pickerView:Landroid/view/View;

    .line 222
    iput-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->pickerHint:Landroid/widget/TextView;

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->tracking:Z

    .line 224
    return-void
.end method

.method public showMarker(Landroid/content/Context;FF)V
    .locals 8

    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 246
    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->pickerView:Landroid/view/View;

    if-nez v0, :cond_1

    sget-object v0, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v0, p1}, Lcom/secaccu/clock/AutoClickEngine;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/secaccu/clock/AutoClickOverlay;->hideMarker()V

    .line 251
    return-void

    .line 253
    :cond_1
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickOverlay;->ensureWm(Landroid/content/Context;)V

    .line 254
    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result v2

    .line 255
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerView:Landroid/view/View;

    const/4 v7, 0x2

    if-nez v0, :cond_2

    .line 256
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 257
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 258
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 259
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 260
    invoke-static {p1, v7}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result p1

    const v3, -0x1f830030

    invoke-virtual {v1, p1, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 261
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 262
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    .line 265
    invoke-static {}, Lcom/secaccu/clock/AutoClickOverlay;->overlayType()I

    move-result v4

    const/16 v5, 0x318

    const/4 v6, -0x3

    move v3, v2

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 271
    const p1, 0x800033

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 272
    iput-object v1, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerParams:Landroid/view/WindowManager$LayoutParams;

    .line 274
    :try_start_0
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay;->windowManager:Landroid/view/WindowManager;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    iput-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    goto :goto_0

    .line 276
    :catchall_0
    move-exception v0

    .line 277
    return-void

    .line 280
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerView:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 281
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    div-int/2addr v2, v7

    sub-int/2addr p2, v2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 282
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    sub-int/2addr p2, v2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 284
    :try_start_1
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerView:Landroid/view/View;

    iget-object p3, p0, Lcom/secaccu/clock/AutoClickOverlay;->markerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 286
    goto :goto_1

    .line 285
    :catchall_1
    move-exception v0

    .line 288
    :cond_3
    :goto_1
    return-void
.end method

.method public startPicker(Landroid/content/Context;)Z
    .locals 16

    .line 39
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 40
    invoke-static {v2}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    const-string v3, "string"

    const/4 v7, 0x0

    if-nez v0, :cond_0

    .line 41
    sget-object v0, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    .line 43
    const-string v4, "auto_click_need_overlay"

    invoke-static {v2, v4, v3}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-virtual {v0, v2, v3}, Lcom/secaccu/clock/AutoClickEngine;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    return v7

    .line 46
    :cond_0
    invoke-virtual {v1}, Lcom/secaccu/clock/AutoClickOverlay;->hideAll()V

    .line 47
    invoke-direct {v1, v2}, Lcom/secaccu/clock/AutoClickOverlay;->ensureWm(Landroid/content/Context;)V

    .line 48
    sget-object v0, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v0, v2}, Lcom/secaccu/clock/AutoClickEngine;->hasPosition(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    sget-object v0, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v0, v2}, Lcom/secaccu/clock/AutoClickEngine;->getX(Landroid/content/Context;)F

    move-result v0

    iput v0, v1, Lcom/secaccu/clock/AutoClickOverlay;->curX:F

    .line 50
    sget-object v0, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v0, v2}, Lcom/secaccu/clock/AutoClickEngine;->getY(Landroid/content/Context;)F

    move-result v0

    iput v0, v1, Lcom/secaccu/clock/AutoClickOverlay;->curY:F

    goto :goto_0

    .line 52
    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, v1, Lcom/secaccu/clock/AutoClickOverlay;->curX:F

    .line 53
    iput v0, v1, Lcom/secaccu/clock/AutoClickOverlay;->curY:F

    .line 56
    :goto_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 57
    const/high16 v4, 0x1a000000

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 59
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 60
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 61
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 62
    const v5, -0xdeae3d2

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 63
    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 64
    const/16 v4, 0xc

    invoke-static {v2, v4}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result v4

    .line 65
    const/16 v5, 0x24

    invoke-static {v2, v5}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v8, v4, v5, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 67
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-virtual {v10, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 69
    const/16 v4, 0x10

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 71
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 72
    const-string v5, "auto_click_picker_hint"

    invoke-static {v2, v5, v3}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const v5, -0xb0801

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    const/4 v5, 0x2

    const/high16 v6, 0x41500000    # 13.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 75
    iput-object v4, v1, Lcom/secaccu/clock/AutoClickOverlay;->pickerHint:Landroid/widget/TextView;

    .line 76
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v11, -0x2

    invoke-direct {v5, v7, v11, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 77
    const/16 v12, 0x8

    invoke-static {v2, v12}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 78
    invoke-virtual {v10, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    const-string v4, "auto_click_close"

    invoke-static {v2, v4, v3}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/secaccu/clock/AutoClickOverlay$1;

    invoke-direct {v6, v1, v2}, Lcom/secaccu/clock/AutoClickOverlay$1;-><init>(Lcom/secaccu/clock/AutoClickOverlay;Landroid/content/Context;)V

    const v4, -0x830030

    const/high16 v5, 0x41800000    # 16.0f

    invoke-direct/range {v1 .. v6}, Lcom/secaccu/clock/AutoClickOverlay;->button(Landroid/content/Context;Ljava/lang/String;IFLjava/lang/Runnable;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v10, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 91
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 92
    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 93
    invoke-static {v2, v12}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v3, v7, v5, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 94
    const-string v5, "\u25c0"

    invoke-direct {v1, v2, v5, v4, v7}, Lcom/secaccu/clock/AutoClickOverlay;->nudge(Landroid/content/Context;Ljava/lang/String;II)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    const-string v5, "\u25b2"

    invoke-direct {v1, v2, v5, v7, v4}, Lcom/secaccu/clock/AutoClickOverlay;->nudge(Landroid/content/Context;Ljava/lang/String;II)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    const-string v5, "\u25bc"

    invoke-direct {v1, v2, v5, v7, v9}, Lcom/secaccu/clock/AutoClickOverlay;->nudge(Landroid/content/Context;Ljava/lang/String;II)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 97
    const-string v5, "\u25b6"

    invoke-direct {v1, v2, v5, v9, v7}, Lcom/secaccu/clock/AutoClickOverlay;->nudge(Landroid/content/Context;Ljava/lang/String;II)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 98
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    nop

    .line 102
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 103
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 101
    invoke-virtual {v8, v3, v5}, Landroid/widget/LinearLayout;->measure(II)V

    .line 104
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    const/16 v5, 0x48

    invoke-static {v2, v5}, Lcom/secaccu/clock/AutoClickOverlay;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v1, Lcom/secaccu/clock/AutoClickOverlay;->barBottom:I

    .line 106
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x30

    invoke-direct {v3, v4, v11, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v8, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    new-instance v3, Lcom/secaccu/clock/AutoClickOverlay$2;

    invoke-direct {v3, v1, v2}, Lcom/secaccu/clock/AutoClickOverlay$2;-><init>(Lcom/secaccu/clock/AutoClickOverlay;Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 146
    new-instance v10, Landroid/view/WindowManager$LayoutParams;

    .line 149
    invoke-static {}, Lcom/secaccu/clock/AutoClickOverlay;->overlayType()I

    move-result v13

    const/16 v14, 0x300

    const/4 v15, -0x3

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct/range {v10 .. v15}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 153
    const v3, 0x800033

    iput v3, v10, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 155
    :try_start_0
    iget-object v3, v1, Lcom/secaccu/clock/AutoClickOverlay;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v3, v0, v10}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iput-object v0, v1, Lcom/secaccu/clock/AutoClickOverlay;->pickerView:Landroid/view/View;

    .line 157
    iget v0, v1, Lcom/secaccu/clock/AutoClickOverlay;->curX:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    .line 158
    iget v0, v1, Lcom/secaccu/clock/AutoClickOverlay;->curX:F

    iget v3, v1, Lcom/secaccu/clock/AutoClickOverlay;->curY:F

    invoke-virtual {v1, v2, v0, v3}, Lcom/secaccu/clock/AutoClickOverlay;->showMarker(Landroid/content/Context;FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :cond_2
    return v9

    .line 161
    :catchall_0
    move-exception v0

    .line 162
    return v7
.end method

.method public syncMarker(Landroid/content/Context;)V
    .locals 2

    .line 297
    sget-object v0, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v0, p1}, Lcom/secaccu/clock/AutoClickEngine;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v0, p1}, Lcom/secaccu/clock/AutoClickEngine;->hasPosition(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    sget-object v0, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v0, p1}, Lcom/secaccu/clock/AutoClickEngine;->getX(Landroid/content/Context;)F

    move-result v0

    sget-object v1, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v1, p1}, Lcom/secaccu/clock/AutoClickEngine;->getY(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/secaccu/clock/AutoClickOverlay;->showMarker(Landroid/content/Context;FF)V

    goto :goto_0

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/secaccu/clock/AutoClickOverlay;->hideMarker()V

    .line 302
    :goto_0
    return-void
.end method
