.class public final Lcom/secaccu/clock/AutoClickUi;
.super Ljava/lang/Object;
.source "AutoClickUi.java"


# static fields
.field public static final INSTANCE:Lcom/secaccu/clock/AutoClickUi;


# instance fields
.field private a11yButton:Landroid/widget/Button;

.field private activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private calcView:Landroid/widget/TextView;

.field private checkView:Landroid/widget/TextView;

.field private enabledSwitch:Landroid/widget/CompoundButton;

.field private hintView:Landroid/widget/TextView;

.field private logView:Landroid/widget/TextView;

.field private pickButton:Landroid/widget/Button;

.field private posView:Landroid/widget/TextView;

.field private targetView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/secaccu/clock/AutoClickUi;

    invoke-direct {v0}, Lcom/secaccu/clock/AutoClickUi;-><init>()V

    sput-object v0, Lcom/secaccu/clock/AutoClickUi;->INSTANCE:Lcom/secaccu/clock/AutoClickUi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/secaccu/clock/AutoClickUi;)Landroid/widget/CompoundButton;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/secaccu/clock/AutoClickUi;->enabledSwitch:Landroid/widget/CompoundButton;

    return-object p0
.end method

.method static synthetic access$100(Lcom/secaccu/clock/AutoClickUi;Landroid/app/Activity;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickUi;->openAccessibilitySettings(Landroid/app/Activity;)V

    return-void
.end method

.method private addExtraBlock(Landroid/app/Activity;)V
    .locals 5

    .line 117
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->hintView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->hintView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->hintView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 121
    const-string v1, "extraBlock"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 122
    if-eqz v2, :cond_1

    .line 123
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 125
    :cond_1
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 127
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 129
    const/high16 v3, 0x41500000    # 13.0f

    invoke-direct {p0, p1, v3}, Lcom/secaccu/clock/AutoClickUi;->text(Landroid/app/Activity;F)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/secaccu/clock/AutoClickUi;->calcView:Landroid/widget/TextView;

    .line 130
    iget-object v3, p0, Lcom/secaccu/clock/AutoClickUi;->calcView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 131
    const/high16 v3, 0x41400000    # 12.0f

    invoke-direct {p0, p1, v3}, Lcom/secaccu/clock/AutoClickUi;->text(Landroid/app/Activity;F)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/secaccu/clock/AutoClickUi;->logView:Landroid/widget/TextView;

    .line 132
    iget-object v4, p0, Lcom/secaccu/clock/AutoClickUi;->logView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 133
    invoke-direct {p0, p1, v3}, Lcom/secaccu/clock/AutoClickUi;->text(Landroid/app/Activity;F)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/secaccu/clock/AutoClickUi;->checkView:Landroid/widget/TextView;

    .line 134
    iget-object v3, p0, Lcom/secaccu/clock/AutoClickUi;->checkView:Landroid/widget/TextView;

    new-instance v4, Lcom/secaccu/clock/AutoClickUi$4;

    invoke-direct {v4, p0, p1}, Lcom/secaccu/clock/AutoClickUi$4;-><init>(Lcom/secaccu/clock/AutoClickUi;Landroid/app/Activity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v3, p0, Lcom/secaccu/clock/AutoClickUi;->checkView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 145
    iget-object v3, p0, Lcom/secaccu/clock/AutoClickUi;->hintView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 146
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickUi;->showExtra(Landroid/app/Activity;)V

    .line 147
    return-void

    .line 118
    :cond_2
    :goto_0
    return-void
.end method

.method private static dp(Landroid/app/Activity;I)I
    .locals 0

    .line 185
    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private openAccessibilitySettings(Landroid/app/Activity;)V
    .locals 2

    .line 223
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    goto :goto_0

    .line 224
    :catchall_0
    move-exception p1

    .line 226
    :goto_0
    return-void
.end method

.method private showExtra(Landroid/app/Activity;)V
    .locals 3

    .line 158
    sget-object v0, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    .line 159
    iget-object v1, p0, Lcom/secaccu/clock/AutoClickUi;->calcView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/secaccu/clock/AutoClickUi;->calcView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Lcom/secaccu/clock/AutoClickEngine;->calcLine(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/secaccu/clock/AutoClickUi;->logView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/secaccu/clock/AutoClickUi;->logView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Lcom/secaccu/clock/AutoClickEngine;->historyLine(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :cond_1
    iget-object v1, p0, Lcom/secaccu/clock/AutoClickUi;->checkView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 166
    iget-object v1, p0, Lcom/secaccu/clock/AutoClickUi;->checkView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Lcom/secaccu/clock/AutoClickEngine;->checkLine(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :cond_2
    return-void
.end method

.method private text(Landroid/app/Activity;F)Landroid/widget/TextView;
    .locals 2

    .line 150
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 151
    iget-object v1, p0, Lcom/secaccu/clock/AutoClickUi;->posView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 152
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 153
    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/secaccu/clock/AutoClickUi;->dp(Landroid/app/Activity;I)I

    move-result v1

    invoke-static {p1, p2}, Lcom/secaccu/clock/AutoClickUi;->dp(Landroid/app/Activity;I)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {v0, p2, v1, p2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 154
    return-object v0
.end method


# virtual methods
.method public attach(Landroid/app/Activity;)V
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->activityRef:Ljava/lang/ref/WeakReference;

    .line 34
    nop

    .line 35
    const-string v0, "autoClickSwitch"

    const-string v1, "id"

    invoke-static {p1, v0, v1}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 34
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->enabledSwitch:Landroid/widget/CompoundButton;

    .line 36
    nop

    .line 37
    const-string v0, "autoClickTarget"

    invoke-static {p1, v0, v1}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 36
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->targetView:Landroid/widget/TextView;

    .line 38
    nop

    .line 39
    const-string v0, "autoClickPosLabel"

    invoke-static {p1, v0, v1}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 38
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->posView:Landroid/widget/TextView;

    .line 40
    nop

    .line 41
    const-string v0, "autoClickHint"

    invoke-static {p1, v0, v1}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 40
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->hintView:Landroid/widget/TextView;

    .line 42
    nop

    .line 43
    const-string v0, "autoClickPickButton"

    invoke-static {p1, v0, v1}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 42
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->pickButton:Landroid/widget/Button;

    .line 44
    nop

    .line 45
    const-string v0, "autoClickA11yButton"

    invoke-static {p1, v0, v1}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 44
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->a11yButton:Landroid/widget/Button;

    .line 46
    sget-object v0, Lcom/secaccu/clock/AutoClickOverlay;->INSTANCE:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-virtual {v0}, Lcom/secaccu/clock/AutoClickOverlay;->hidePicker()V

    .line 47
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->enabledSwitch:Landroid/widget/CompoundButton;

    if-nez v0, :cond_0

    .line 48
    return-void

    .line 50
    :cond_0
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickUi;->addExtraBlock(Landroid/app/Activity;)V

    .line 52
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->enabledSwitch:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 53
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->enabledSwitch:Landroid/widget/CompoundButton;

    sget-object v1, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v1, p1}, Lcom/secaccu/clock/AutoClickEngine;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 54
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->enabledSwitch:Landroid/widget/CompoundButton;

    new-instance v1, Lcom/secaccu/clock/AutoClickUi$1;

    invoke-direct {v1, p0, p1}, Lcom/secaccu/clock/AutoClickUi$1;-><init>(Lcom/secaccu/clock/AutoClickUi;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 83
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->pickButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->pickButton:Landroid/widget/Button;

    new-instance v1, Lcom/secaccu/clock/AutoClickUi$2;

    invoke-direct {v1, p0, p1}, Lcom/secaccu/clock/AutoClickUi$2;-><init>(Lcom/secaccu/clock/AutoClickUi;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->a11yButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->a11yButton:Landroid/widget/Button;

    new-instance v1, Lcom/secaccu/clock/AutoClickUi$3;

    invoke-direct {v1, p0, p1}, Lcom/secaccu/clock/AutoClickUi$3;-><init>(Lcom/secaccu/clock/AutoClickUi;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    :cond_2
    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AutoClickUi;->refresh(Landroid/app/Activity;)V

    .line 113
    return-void
.end method

.method public onTick(Landroid/app/Activity;)V
    .locals 2

    .line 214
    sget-object v0, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v0, p1}, Lcom/secaccu/clock/AutoClickEngine;->evaluate(Landroid/content/Context;)V

    .line 215
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->targetView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->targetView:Landroid/widget/TextView;

    sget-object v1, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v1, p1}, Lcom/secaccu/clock/AutoClickEngine;->statusLine(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    :cond_0
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickUi;->showExtra(Landroid/app/Activity;)V

    .line 219
    return-void
.end method

.method public refresh(Landroid/app/Activity;)V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->targetView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->targetView:Landroid/widget/TextView;

    sget-object v1, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v1, p1}, Lcom/secaccu/clock/AutoClickEngine;->statusLine(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->posView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->posView:Landroid/widget/TextView;

    sget-object v1, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v1, p1}, Lcom/secaccu/clock/AutoClickEngine;->positionLine(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->enabledSwitch:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->enabledSwitch:Landroid/widget/CompoundButton;

    .line 196
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    sget-object v1, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v1, p1}, Lcom/secaccu/clock/AutoClickEngine;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 197
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->enabledSwitch:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 198
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->enabledSwitch:Landroid/widget/CompoundButton;

    sget-object v1, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v1, p1}, Lcom/secaccu/clock/AutoClickEngine;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 199
    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AutoClickUi;->attach(Landroid/app/Activity;)V

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->a11yButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 202
    sget-object v0, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v0, p1}, Lcom/secaccu/clock/AutoClickEngine;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 203
    iget-object v1, p0, Lcom/secaccu/clock/AutoClickUi;->a11yButton:Landroid/widget/Button;

    .line 206
    if-eqz v0, :cond_3

    const-string v0, "auto_click_a11y_on"

    goto :goto_0

    :cond_3
    const-string v0, "auto_click_a11y"

    .line 204
    :goto_0
    const-string v2, "string"

    invoke-static {p1, v0, v2}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 203
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 209
    :cond_4
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickUi;->showExtra(Landroid/app/Activity;)V

    .line 210
    sget-object v0, Lcom/secaccu/clock/AutoClickOverlay;->INSTANCE:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-virtual {v0, p1}, Lcom/secaccu/clock/AutoClickOverlay;->syncMarker(Landroid/content/Context;)V

    .line 211
    return-void
.end method

.method public syncNow()V
    .locals 5

    .line 172
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->activityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 173
    :goto_0
    if-nez v0, :cond_1

    .line 174
    return-void

    .line 177
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "syncNow"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 178
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 179
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    goto :goto_1

    .line 180
    :catchall_0
    move-exception v0

    .line 182
    :goto_1
    return-void
.end method
