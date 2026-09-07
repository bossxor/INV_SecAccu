.class public Lcom/secaccu/clock/AlarmTargetUi$2;
.super Ljava/lang/Object;
.source "AlarmTargetUi.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/secaccu/clock/AlarmTargetUi;->showTimePicker(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/secaccu/clock/AlarmTargetUi;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/secaccu/clock/AlarmTargetUi;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/secaccu/clock/AlarmTargetUi$2;->this$0:Lcom/secaccu/clock/AlarmTargetUi;

    iput-object p2, p0, Lcom/secaccu/clock/AlarmTargetUi$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 2

    iget-object v0, p0, Lcom/secaccu/clock/AlarmTargetUi$2;->this$0:Lcom/secaccu/clock/AlarmTargetUi;

    iget-object v1, p0, Lcom/secaccu/clock/AlarmTargetUi$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1, p2, p3}, Lcom/secaccu/clock/AlarmTargetUi;->access$100(Lcom/secaccu/clock/AlarmTargetUi;Landroid/app/Activity;II)V

    return-void
.end method
