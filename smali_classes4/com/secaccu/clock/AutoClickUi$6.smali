.class Lcom/secaccu/clock/AutoClickUi$6;
.super Ljava/lang/Object;
.source "AutoClickUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/secaccu/clock/AutoClickUi;->stepButton(Landroid/app/Activity;Ljava/lang/String;II)Landroid/widget/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/secaccu/clock/AutoClickUi;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$delta:I

.field final synthetic val$which:I


# direct methods
.method constructor <init>(Lcom/secaccu/clock/AutoClickUi;ILandroid/app/Activity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lcom/secaccu/clock/AutoClickUi$6;->this$0:Lcom/secaccu/clock/AutoClickUi;

    iput p2, p0, Lcom/secaccu/clock/AutoClickUi$6;->val$which:I

    iput-object p3, p0, Lcom/secaccu/clock/AutoClickUi$6;->val$activity:Landroid/app/Activity;

    iput p4, p0, Lcom/secaccu/clock/AutoClickUi$6;->val$delta:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 200
    sget-object p1, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    .line 201
    iget v0, p0, Lcom/secaccu/clock/AutoClickUi$6;->val$which:I

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi$6;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/secaccu/clock/AutoClickUi$6;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Lcom/secaccu/clock/AutoClickEngine;->getPct(Landroid/content/Context;)I

    move-result v1

    iget v2, p0, Lcom/secaccu/clock/AutoClickUi$6;->val$delta:I

    add-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/secaccu/clock/AutoClickEngine;->setPct(Landroid/content/Context;I)V

    goto :goto_0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi$6;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/secaccu/clock/AutoClickUi$6;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Lcom/secaccu/clock/AutoClickEngine;->getAdj(Landroid/content/Context;)I

    move-result v1

    iget v2, p0, Lcom/secaccu/clock/AutoClickUi$6;->val$delta:I

    add-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/secaccu/clock/AutoClickEngine;->setAdj(Landroid/content/Context;I)V

    .line 206
    :goto_0
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickUi$6;->this$0:Lcom/secaccu/clock/AutoClickUi;

    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi$6;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/secaccu/clock/AutoClickUi;->refresh(Landroid/app/Activity;)V

    .line 207
    return-void
.end method
