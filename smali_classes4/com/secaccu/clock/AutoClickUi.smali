.class public final Lcom/secaccu/clock/AutoClickUi;
.super Ljava/lang/Object;
.source "AutoClickUi.java"


# static fields
.field public static final INSTANCE:Lcom/secaccu/clock/AutoClickUi;


# instance fields
.field private a11yButton:Lcom/google/android/material/button/MaterialButton;

.field private enabledSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

.field private hintView:Landroid/widget/TextView;

.field private pickButton:Lcom/google/android/material/button/MaterialButton;

.field private posView:Landroid/widget/TextView;

.field private targetView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/secaccu/clock/AutoClickUi;

    invoke-direct {v0}, Lcom/secaccu/clock/AutoClickUi;-><init>()V

    sput-object v0, Lcom/secaccu/clock/AutoClickUi;->INSTANCE:Lcom/secaccu/clock/AutoClickUi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/secaccu/clock/AutoClickUi;)Lcom/google/android/material/materialswitch/MaterialSwitch;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/secaccu/clock/AutoClickUi;->enabledSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    return-object p0
.end method

.method static synthetic access$100(Lcom/secaccu/clock/AutoClickUi;Landroid/app/Activity;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickUi;->openAccessibilitySettings(Landroid/app/Activity;)V

    return-void
.end method

.method private openAccessibilitySettings(Landroid/app/Activity;)V
    .locals 2

    .line 136
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    goto :goto_0

    .line 137
    :catchall_0
    move-exception p1

    .line 139
    :goto_0
    return-void
.end method


# virtual methods
.method public attach(Landroid/app/Activity;)V
    .locals 2

    .line 26
    nop

    .line 27
    const-string v0, "autoClickSwitch"

    const-string v1, "id"

    invoke-static {p1, v0, v1}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 26
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/materialswitch/MaterialSwitch;

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->enabledSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 28
    nop

    .line 29
    const-string v0, "autoClickTarget"

    invoke-static {p1, v0, v1}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 28
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->targetView:Landroid/widget/TextView;

    .line 30
    nop

    .line 31
    const-string v0, "autoClickPosLabel"

    invoke-static {p1, v0, v1}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 30
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->posView:Landroid/widget/TextView;

    .line 32
    nop

    .line 33
    const-string v0, "autoClickHint"

    invoke-static {p1, v0, v1}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 32
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->hintView:Landroid/widget/TextView;

    .line 34
    nop

    .line 35
    const-string v0, "autoClickPickButton"

    invoke-static {p1, v0, v1}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 34
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->pickButton:Lcom/google/android/material/button/MaterialButton;

    .line 36
    nop

    .line 37
    const-string v0, "autoClickA11yButton"

    invoke-static {p1, v0, v1}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 36
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->a11yButton:Lcom/google/android/material/button/MaterialButton;

    .line 38
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->enabledSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    if-nez v0, :cond_0

    .line 39
    return-void

    .line 42
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/materialswitch/MaterialSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 43
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->enabledSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    sget-object v1, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v1, p1}, Lcom/secaccu/clock/AutoClickEngine;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/materialswitch/MaterialSwitch;->setChecked(Z)V

    .line 44
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->enabledSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    new-instance v1, Lcom/secaccu/clock/AutoClickUi$1;

    invoke-direct {v1, p0, p1}, Lcom/secaccu/clock/AutoClickUi$1;-><init>(Lcom/secaccu/clock/AutoClickUi;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/materialswitch/MaterialSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 72
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->pickButton:Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_1

    .line 73
    new-instance v1, Lcom/secaccu/clock/AutoClickUi$2;

    invoke-direct {v1, p0, p1}, Lcom/secaccu/clock/AutoClickUi$2;-><init>(Lcom/secaccu/clock/AutoClickUi;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->a11yButton:Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_2

    .line 91
    new-instance v1, Lcom/secaccu/clock/AutoClickUi$3;

    invoke-direct {v1, p0, p1}, Lcom/secaccu/clock/AutoClickUi$3;-><init>(Lcom/secaccu/clock/AutoClickUi;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    :cond_2
    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AutoClickUi;->refresh(Landroid/app/Activity;)V

    .line 99
    return-void
.end method

.method public onTick(Landroid/app/Activity;)V
    .locals 2

    .line 128
    sget-object v0, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v0, p1}, Lcom/secaccu/clock/AutoClickEngine;->evaluate(Landroid/content/Context;)V

    .line 129
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->targetView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 130
    sget-object v1, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v1, p1}, Lcom/secaccu/clock/AutoClickEngine;->statusLine(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_0
    return-void
.end method

.method public refresh(Landroid/app/Activity;)V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->targetView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 103
    sget-object v1, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v1, p1}, Lcom/secaccu/clock/AutoClickEngine;->statusLine(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->posView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 106
    sget-object v1, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v1, p1}, Lcom/secaccu/clock/AutoClickEngine;->positionLine(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->enabledSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {v0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->isChecked()Z

    move-result v0

    sget-object v1, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v1, p1}, Lcom/secaccu/clock/AutoClickEngine;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 110
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->enabledSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/materialswitch/MaterialSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 111
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->enabledSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    sget-object v1, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v1, p1}, Lcom/secaccu/clock/AutoClickEngine;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/materialswitch/MaterialSwitch;->setChecked(Z)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AutoClickUi;->attach(Landroid/app/Activity;)V

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->a11yButton:Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_4

    .line 115
    sget-object v0, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v0, p1}, Lcom/secaccu/clock/AutoClickEngine;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 116
    iget-object v1, p0, Lcom/secaccu/clock/AutoClickUi;->a11yButton:Lcom/google/android/material/button/MaterialButton;

    .line 119
    if-eqz v0, :cond_3

    const-string v0, "auto_click_a11y_on"

    goto :goto_0

    :cond_3
    const-string v0, "auto_click_a11y"

    .line 117
    :goto_0
    const-string v2, "string"

    invoke-static {p1, v0, v2}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 116
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_4
    sget-object v0, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v0, p1}, Lcom/secaccu/clock/AutoClickEngine;->hasPosition(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 123
    sget-object v0, Lcom/secaccu/clock/AutoClickOverlay;->INSTANCE:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-virtual {v0, p1}, Lcom/secaccu/clock/AutoClickOverlay;->syncMarker(Landroid/content/Context;)V

    .line 125
    :cond_5
    return-void
.end method
