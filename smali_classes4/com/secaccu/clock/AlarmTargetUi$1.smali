.class public Lcom/secaccu/clock/AlarmTargetUi$1;
.super Ljava/lang/Object;
.source "AlarmTargetUi.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/secaccu/clock/AlarmTargetUi;->showChooser(Landroid/app/Activity;)V
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

    iput-object p1, p0, Lcom/secaccu/clock/AlarmTargetUi$1;->this$0:Lcom/secaccu/clock/AlarmTargetUi;

    iput-object p2, p0, Lcom/secaccu/clock/AlarmTargetUi$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/secaccu/clock/AlarmTargetUi$1;->this$0:Lcom/secaccu/clock/AlarmTargetUi;

    iget-object v1, p0, Lcom/secaccu/clock/AlarmTargetUi$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p2}, Lcom/secaccu/clock/AlarmTargetUi;->onChooser(Landroid/app/Activity;I)V

    return-void
.end method
