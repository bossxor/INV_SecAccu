.class public final Lcom/secaccu/clock/AlarmTargetUi;
.super Ljava/lang/Object;
.source "AlarmTargetUi.java"


# static fields
.field public static final INSTANCE:Lcom/secaccu/clock/AlarmTargetUi;


# instance fields
.field private targetButton:Lcom/google/android/material/button/MaterialButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/secaccu/clock/AlarmTargetUi;

    invoke-direct {v0}, Lcom/secaccu/clock/AlarmTargetUi;-><init>()V

    sput-object v0, Lcom/secaccu/clock/AlarmTargetUi;->INSTANCE:Lcom/secaccu/clock/AlarmTargetUi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/secaccu/clock/AlarmTargetUi;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/secaccu/clock/AlarmTargetUi;->showTimePicker(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$100(Lcom/secaccu/clock/AlarmTargetUi;Landroid/app/Activity;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/secaccu/clock/AlarmTargetUi;->applyTarget(Landroid/app/Activity;II)V

    return-void
.end method

.method private applyTarget(Landroid/app/Activity;II)V
    .locals 4

    sget-object v0, Lcom/secaccu/clock/ExactHourAlarm;->INSTANCE:Lcom/secaccu/clock/ExactHourAlarm;

    invoke-virtual {v0, p1, p2, p3}, Lcom/secaccu/clock/ExactHourAlarm;->setTargetTime(Landroid/content/Context;II)V

    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AlarmTargetUi;->refresh(Landroid/app/Activity;)V

    sget-object v0, Lcom/secaccu/clock/AutoClickUi;->INSTANCE:Lcom/secaccu/clock/AutoClickUi;

    invoke-virtual {v0, p1}, Lcom/secaccu/clock/AutoClickUi;->refresh(Landroid/app/Activity;)V

    sget-object v0, Lcom/secaccu/clock/ExactHourAlarm;->INSTANCE:Lcom/secaccu/clock/ExactHourAlarm;

    invoke-virtual {v0, p1}, Lcom/secaccu/clock/ExactHourAlarm;->leadSeconds(Landroid/content/Context;)I

    move-result v0

    const-string v1, "alarmLeadLabel"

    const-string v2, "id"

    invoke-static {p1, v1, v2}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/secaccu/clock/PressHintFormatter;->isExactHourMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "\uc815\uac01 "

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/secaccu/clock/PressHintFormatter;->targetLabel()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\ucd08 \uc804\ubd80\ud130"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v1, "alarmHint"

    const-string v2, "id"

    invoke-static {p1, v1, v2}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    sget-object v2, Lcom/secaccu/clock/ExactHourAlarm;->INSTANCE:Lcom/secaccu/clock/ExactHourAlarm;

    invoke-virtual {v2, v0}, Lcom/secaccu/clock/ExactHourAlarm;->hint(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private showChooser(Landroid/app/Activity;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, "\uc2dc\uac01 \uc9c1\uc811 \uc9c0\uc815"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "\ub9e4\uc2dc \uc815\uac01\uc73c\ub85c"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "alarm_target_picker_title"

    const-string v3, "string"

    invoke-static {p1, v2, v3}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/secaccu/clock/AlarmTargetUi$1;

    invoke-direct {v2, p0, p1}, Lcom/secaccu/clock/AlarmTargetUi$1;-><init>(Lcom/secaccu/clock/AlarmTargetUi;Landroid/app/Activity;)V

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private showTimePicker(Landroid/app/Activity;)V
    .locals 8

    sget-object v0, Lcom/secaccu/clock/ExactHourAlarm;->INSTANCE:Lcom/secaccu/clock/ExactHourAlarm;

    invoke-virtual {v0, p1}, Lcom/secaccu/clock/ExactHourAlarm;->targetHour(Landroid/content/Context;)I

    move-result v0

    if-gez v0, :cond_0

    const/16 v0, 0xd

    :cond_0
    move v4, v0

    sget-object v0, Lcom/secaccu/clock/ExactHourAlarm;->INSTANCE:Lcom/secaccu/clock/ExactHourAlarm;

    invoke-virtual {v0, p1}, Lcom/secaccu/clock/ExactHourAlarm;->targetMinute(Landroid/content/Context;)I

    move-result v5

    new-instance v0, Landroid/app/TimePickerDialog;

    new-instance v3, Lcom/secaccu/clock/AlarmTargetUi$2;

    invoke-direct {v3, p0, p1}, Lcom/secaccu/clock/AlarmTargetUi$2;-><init>(Lcom/secaccu/clock/AlarmTargetUi;Landroid/app/Activity;)V

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    return-void
.end method


# virtual methods
.method public attach(Landroid/app/Activity;)V
    .locals 2

    sget-object v0, Lcom/secaccu/clock/ExactHourAlarm;->INSTANCE:Lcom/secaccu/clock/ExactHourAlarm;

    invoke-virtual {v0, p1}, Lcom/secaccu/clock/ExactHourAlarm;->syncTargetToFormatter(Landroid/content/Context;)V

    const-string v0, "alarmTargetButton"

    const-string v1, "id"

    invoke-static {p1, v0, v1}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lcom/secaccu/clock/AlarmTargetUi;->targetButton:Lcom/google/android/material/button/MaterialButton;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/secaccu/clock/AlarmTargetUi$3;

    invoke-direct {v1, p0, p1}, Lcom/secaccu/clock/AlarmTargetUi$3;-><init>(Lcom/secaccu/clock/AlarmTargetUi;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AlarmTargetUi;->refresh(Landroid/app/Activity;)V

    return-void
.end method

.method public onChooser(Landroid/app/Activity;I)V
    .locals 1

    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lcom/secaccu/clock/AlarmTargetUi;->showTimePicker(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/secaccu/clock/AlarmTargetUi;->applyTarget(Landroid/app/Activity;II)V

    :goto_0
    return-void
.end method

.method public openChooser(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/secaccu/clock/AlarmTargetUi;->showChooser(Landroid/app/Activity;)V

    return-void
.end method

.method public refresh(Landroid/app/Activity;)V
    .locals 5

    iget-object v0, p0, Lcom/secaccu/clock/AlarmTargetUi;->targetButton:Lcom/google/android/material/button/MaterialButton;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/secaccu/clock/PressHintFormatter;->isExactHourMode()Z

    move-result v1

    const-string v2, "string"

    if-eqz v1, :cond_1

    const-string v1, "alarm_target_exact"

    invoke-static {p1, v1, v2}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v1, "alarm_target_custom"

    invoke-static {p1, v1, v2}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/secaccu/clock/PressHintFormatter;->targetLabel()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
