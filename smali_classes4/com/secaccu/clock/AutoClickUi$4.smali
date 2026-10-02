.class Lcom/secaccu/clock/AutoClickUi$4;
.super Ljava/lang/Object;
.source "AutoClickUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/secaccu/clock/AutoClickUi;->addExtraBlock(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/secaccu/clock/AutoClickUi;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/secaccu/clock/AutoClickUi;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/secaccu/clock/AutoClickUi$4;->this$0:Lcom/secaccu/clock/AutoClickUi;

    iput-object p2, p0, Lcom/secaccu/clock/AutoClickUi$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 146
    sget-object p1, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/secaccu/clock/AutoClickEngine;->startTest(Landroid/content/Context;)V

    .line 147
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickUi$4;->this$0:Lcom/secaccu/clock/AutoClickUi;

    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/secaccu/clock/AutoClickUi;->refresh(Landroid/app/Activity;)V

    .line 148
    return-void
.end method
