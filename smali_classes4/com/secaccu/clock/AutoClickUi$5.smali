.class Lcom/secaccu/clock/AutoClickUi$5;
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
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/secaccu/clock/AutoClickUi$5;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi$5;->val$activity:Landroid/app/Activity;

    check-cast p1, Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    sget-object v1, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v1, v0, p1}, Lcom/secaccu/clock/AutoClickEngine;->setExactMode(Landroid/content/Context;Z)V

    sget-object p1, Lcom/secaccu/clock/AutoClickUi;->INSTANCE:Lcom/secaccu/clock/AutoClickUi;

    invoke-virtual {p1, v0}, Lcom/secaccu/clock/AutoClickUi;->refresh(Landroid/app/Activity;)V

    return-void
.end method
