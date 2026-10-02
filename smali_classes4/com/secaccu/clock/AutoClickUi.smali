.class public final Lcom/secaccu/clock/AutoClickUi;
.super Ljava/lang/Object;
.source "AutoClickUi.java"


# static fields
.field private static final ADJ:I = 0x1

.field public static final INSTANCE:Lcom/secaccu/clock/AutoClickUi;

.field private static final PCT:I


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

.field private adjView:Landroid/widget/TextView;

.field private calcView:Landroid/widget/TextView;

.field private checkView:Landroid/widget/TextView;

.field private enabledSwitch:Landroid/widget/CompoundButton;

.field private hintView:Landroid/widget/TextView;

.field private logView:Landroid/widget/TextView;

.field private pctView:Landroid/widget/TextView;

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

    .line 35
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
    .locals 10

    .line 122
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->hintView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->hintView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    move-object v3, p0

    goto/16 :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->hintView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 126
    const-string v1, "extraBlock"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 127
    if-eqz v2, :cond_1

    .line 128
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 130
    :cond_1
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 131
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 132
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 134
    const/high16 v3, 0x41500000    # 13.0f

    invoke-direct {p0, p1, v3}, Lcom/secaccu/clock/AutoClickUi;->text(Landroid/app/Activity;F)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/secaccu/clock/AutoClickUi;->calcView:Landroid/widget/TextView;

    .line 135
    iget-object v3, p0, Lcom/secaccu/clock/AutoClickUi;->calcView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 136
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/secaccu/clock/AutoClickUi;->pctView:Landroid/widget/TextView;

    .line 137
    const/16 v8, 0xa

    iget-object v9, p0, Lcom/secaccu/clock/AutoClickUi;->pctView:Landroid/widget/TextView;

    const-string v6, "\ubc18\uc601 \ube44\uc728 (RTT/2\uc758)"

    const/4 v7, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/secaccu/clock/AutoClickUi;->stepRow(Landroid/app/Activity;Ljava/lang/String;IILandroid/widget/TextView;)Landroid/view/View;

    move-result-object p1

    move-object v3, v4

    move-object v4, v5

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, v3, Lcom/secaccu/clock/AutoClickUi;->adjView:Landroid/widget/TextView;

    .line 139
    const/4 v7, 0x1

    iget-object v8, v3, Lcom/secaccu/clock/AutoClickUi;->adjView:Landroid/widget/TextView;

    const-string v5, "\ubcf4\uc815(ms)"

    const/4 v6, 0x1

    invoke-direct/range {v3 .. v8}, Lcom/secaccu/clock/AutoClickUi;->stepRow(Landroid/app/Activity;Ljava/lang/String;IILandroid/widget/TextView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 141
    new-instance p1, Landroid/widget/Button;

    invoke-direct {p1, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 142
    const-string v5, "\uc5f0\uc2b5 \ud0ed (10\ucd08 \ub2e8\uc704 \uc815\uac01\uc5d0 \uc9c0\uc815 \uc704\uce58 \ud0ed)"

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 143
    new-instance v5, Lcom/secaccu/clock/AutoClickUi$4;

    invoke-direct {v5, p0, v4}, Lcom/secaccu/clock/AutoClickUi$4;-><init>(Lcom/secaccu/clock/AutoClickUi;Landroid/app/Activity;)V

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 152
    const/high16 p1, 0x41400000    # 12.0f

    invoke-direct {p0, v4, p1}, Lcom/secaccu/clock/AutoClickUi;->text(Landroid/app/Activity;F)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, v3, Lcom/secaccu/clock/AutoClickUi;->logView:Landroid/widget/TextView;

    .line 153
    iget-object v5, v3, Lcom/secaccu/clock/AutoClickUi;->logView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 154
    invoke-direct {p0, v4, p1}, Lcom/secaccu/clock/AutoClickUi;->text(Landroid/app/Activity;F)Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, v3, Lcom/secaccu/clock/AutoClickUi;->checkView:Landroid/widget/TextView;

    .line 155
    iget-object p1, v3, Lcom/secaccu/clock/AutoClickUi;->checkView:Landroid/widget/TextView;

    new-instance v5, Lcom/secaccu/clock/AutoClickUi$5;

    invoke-direct {v5, p0, v4}, Lcom/secaccu/clock/AutoClickUi$5;-><init>(Lcom/secaccu/clock/AutoClickUi;Landroid/app/Activity;)V

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object p1, v3, Lcom/secaccu/clock/AutoClickUi;->checkView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 166
    iget-object p1, v3, Lcom/secaccu/clock/AutoClickUi;->hintView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {v0, v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 167
    invoke-direct {p0, v4}, Lcom/secaccu/clock/AutoClickUi;->showExtra(Landroid/app/Activity;)V

    .line 168
    return-void

    .line 122
    :cond_2
    move-object v3, p0

    .line 123
    :goto_0
    return-void
.end method

.method private static dp(Landroid/app/Activity;I)I
    .locals 0

    .line 247
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

    .line 285
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    goto :goto_0

    .line 286
    :catchall_0
    move-exception p1

    .line 288
    :goto_0
    return-void
.end method

.method private showExtra(Landroid/app/Activity;)V
    .locals 5

    .line 213
    sget-object v0, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    .line 214
    iget-object v1, p0, Lcom/secaccu/clock/AutoClickUi;->pctView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/secaccu/clock/AutoClickUi;->pctView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/secaccu/clock/AutoClickEngine;->getPct(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/secaccu/clock/AutoClickUi;->adjView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 218
    invoke-virtual {v0, p1}, Lcom/secaccu/clock/AutoClickEngine;->getAdj(Landroid/content/Context;)I

    move-result v1

    .line 219
    iget-object v2, p0, Lcom/secaccu/clock/AutoClickUi;->adjView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v1, :cond_1

    const-string v4, "+"

    goto :goto_0

    :cond_1
    const-string v4, ""

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "ms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    :cond_2
    iget-object v1, p0, Lcom/secaccu/clock/AutoClickUi;->calcView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 222
    iget-object v1, p0, Lcom/secaccu/clock/AutoClickUi;->calcView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Lcom/secaccu/clock/AutoClickEngine;->calcLine(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :cond_3
    iget-object v1, p0, Lcom/secaccu/clock/AutoClickUi;->logView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 225
    iget-object v1, p0, Lcom/secaccu/clock/AutoClickUi;->logView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Lcom/secaccu/clock/AutoClickEngine;->historyLine(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    :cond_4
    iget-object v1, p0, Lcom/secaccu/clock/AutoClickUi;->checkView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 228
    iget-object v1, p0, Lcom/secaccu/clock/AutoClickUi;->checkView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Lcom/secaccu/clock/AutoClickEngine;->checkLine(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    :cond_5
    return-void
.end method

.method private stepButton(Landroid/app/Activity;Ljava/lang/String;II)Landroid/widget/Button;
    .locals 1

    .line 195
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 196
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 197
    new-instance p2, Lcom/secaccu/clock/AutoClickUi$6;

    invoke-direct {p2, p0, p3, p1, p4}, Lcom/secaccu/clock/AutoClickUi$6;-><init>(Lcom/secaccu/clock/AutoClickUi;ILandroid/app/Activity;I)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    return-object v0
.end method

.method private stepRow(Landroid/app/Activity;Ljava/lang/String;IILandroid/widget/TextView;)Landroid/view/View;
    .locals 5

    .line 179
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 180
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 181
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 182
    const/high16 v2, 0x41500000    # 13.0f

    invoke-direct {p0, p1, v2}, Lcom/secaccu/clock/AutoClickUi;->text(Landroid/app/Activity;F)Landroid/widget/TextView;

    move-result-object v2

    .line 183
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, -0x2

    invoke-direct {p2, v1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    const-string p2, "\u2212"

    neg-int v1, p4

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/secaccu/clock/AutoClickUi;->stepButton(Landroid/app/Activity;Ljava/lang/String;II)Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 186
    iget-object p2, p0, Lcom/secaccu/clock/AutoClickUi;->posView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p5, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 187
    const/high16 p2, 0x41700000    # 15.0f

    invoke-virtual {p5, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 188
    const/16 p2, 0x11

    invoke-virtual {p5, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 189
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x40

    invoke-static {p1, v1}, Lcom/secaccu/clock/AutoClickUi;->dp(Landroid/app/Activity;I)I

    move-result v1

    invoke-direct {p2, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p5, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    const-string p2, "+"

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/secaccu/clock/AutoClickUi;->stepButton(Landroid/app/Activity;Ljava/lang/String;II)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 191
    return-object v0
.end method

.method private text(Landroid/app/Activity;F)Landroid/widget/TextView;
    .locals 2

    .line 171
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 172
    iget-object v1, p0, Lcom/secaccu/clock/AutoClickUi;->posView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 173
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 174
    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/secaccu/clock/AutoClickUi;->dp(Landroid/app/Activity;I)I

    move-result v1

    invoke-static {p1, p2}, Lcom/secaccu/clock/AutoClickUi;->dp(Landroid/app/Activity;I)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {v0, p2, v1, p2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 175
    return-object v0
.end method


# virtual methods
.method public attach(Landroid/app/Activity;)V
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->activityRef:Ljava/lang/ref/WeakReference;

    .line 39
    nop

    .line 40
    const-string v0, "autoClickSwitch"

    const-string v1, "id"

    invoke-static {p1, v0, v1}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 39
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->enabledSwitch:Landroid/widget/CompoundButton;

    .line 41
    nop

    .line 42
    const-string v0, "autoClickTarget"

    invoke-static {p1, v0, v1}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 41
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->targetView:Landroid/widget/TextView;

    .line 43
    nop

    .line 44
    const-string v0, "autoClickPosLabel"

    invoke-static {p1, v0, v1}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 43
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->posView:Landroid/widget/TextView;

    .line 45
    nop

    .line 46
    const-string v0, "autoClickHint"

    invoke-static {p1, v0, v1}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 45
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->hintView:Landroid/widget/TextView;

    .line 47
    nop

    .line 48
    const-string v0, "autoClickPickButton"

    invoke-static {p1, v0, v1}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 47
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->pickButton:Landroid/widget/Button;

    .line 49
    nop

    .line 50
    const-string v0, "autoClickA11yButton"

    invoke-static {p1, v0, v1}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 49
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->a11yButton:Landroid/widget/Button;

    .line 51
    sget-object v0, Lcom/secaccu/clock/AutoClickOverlay;->INSTANCE:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-virtual {v0}, Lcom/secaccu/clock/AutoClickOverlay;->hidePicker()V

    .line 52
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->enabledSwitch:Landroid/widget/CompoundButton;

    if-nez v0, :cond_0

    .line 53
    return-void

    .line 55
    :cond_0
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickUi;->addExtraBlock(Landroid/app/Activity;)V

    .line 57
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->enabledSwitch:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 58
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->enabledSwitch:Landroid/widget/CompoundButton;

    sget-object v1, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v1, p1}, Lcom/secaccu/clock/AutoClickEngine;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 59
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->enabledSwitch:Landroid/widget/CompoundButton;

    new-instance v1, Lcom/secaccu/clock/AutoClickUi$1;

    invoke-direct {v1, p0, p1}, Lcom/secaccu/clock/AutoClickUi$1;-><init>(Lcom/secaccu/clock/AutoClickUi;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 88
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->pickButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->pickButton:Landroid/widget/Button;

    new-instance v1, Lcom/secaccu/clock/AutoClickUi$2;

    invoke-direct {v1, p0, p1}, Lcom/secaccu/clock/AutoClickUi$2;-><init>(Lcom/secaccu/clock/AutoClickUi;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->a11yButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->a11yButton:Landroid/widget/Button;

    new-instance v1, Lcom/secaccu/clock/AutoClickUi$3;

    invoke-direct {v1, p0, p1}, Lcom/secaccu/clock/AutoClickUi$3;-><init>(Lcom/secaccu/clock/AutoClickUi;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    :cond_2
    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AutoClickUi;->refresh(Landroid/app/Activity;)V

    .line 118
    return-void
.end method

.method public onTick(Landroid/app/Activity;)V
    .locals 2

    .line 276
    sget-object v0, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v0, p1}, Lcom/secaccu/clock/AutoClickEngine;->evaluate(Landroid/content/Context;)V

    .line 277
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->targetView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->targetView:Landroid/widget/TextView;

    sget-object v1, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v1, p1}, Lcom/secaccu/clock/AutoClickEngine;->statusLine(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    :cond_0
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickUi;->showExtra(Landroid/app/Activity;)V

    .line 281
    return-void
.end method

.method public refresh(Landroid/app/Activity;)V
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->targetView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->targetView:Landroid/widget/TextView;

    sget-object v1, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v1, p1}, Lcom/secaccu/clock/AutoClickEngine;->statusLine(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->posView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->posView:Landroid/widget/TextView;

    sget-object v1, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v1, p1}, Lcom/secaccu/clock/AutoClickEngine;->positionLine(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->enabledSwitch:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->enabledSwitch:Landroid/widget/CompoundButton;

    .line 258
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    sget-object v1, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v1, p1}, Lcom/secaccu/clock/AutoClickEngine;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 259
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->enabledSwitch:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 260
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->enabledSwitch:Landroid/widget/CompoundButton;

    sget-object v1, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v1, p1}, Lcom/secaccu/clock/AutoClickEngine;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 261
    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AutoClickUi;->attach(Landroid/app/Activity;)V

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->a11yButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 264
    sget-object v0, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v0, p1}, Lcom/secaccu/clock/AutoClickEngine;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 265
    iget-object v1, p0, Lcom/secaccu/clock/AutoClickUi;->a11yButton:Landroid/widget/Button;

    .line 268
    if-eqz v0, :cond_3

    const-string v0, "auto_click_a11y_on"

    goto :goto_0

    :cond_3
    const-string v0, "auto_click_a11y"

    .line 266
    :goto_0
    const-string v2, "string"

    invoke-static {p1, v0, v2}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 265
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 271
    :cond_4
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickUi;->showExtra(Landroid/app/Activity;)V

    .line 272
    sget-object v0, Lcom/secaccu/clock/AutoClickOverlay;->INSTANCE:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-virtual {v0, p1}, Lcom/secaccu/clock/AutoClickOverlay;->syncMarker(Landroid/content/Context;)V

    .line 273
    return-void
.end method

.method public syncNow()V
    .locals 5

    .line 234
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->activityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 235
    :goto_0
    if-nez v0, :cond_1

    .line 236
    return-void

    .line 239
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "syncNow"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 240
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 241
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    goto :goto_1

    .line 242
    :catchall_0
    move-exception v0

    .line 244
    :goto_1
    return-void
.end method
