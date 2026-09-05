.class Lcom/secaccu/clock/AutoClickService$1;
.super Ljava/lang/Object;
.source "AutoClickService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/secaccu/clock/AutoClickService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/secaccu/clock/AutoClickService;


# direct methods
.method constructor <init>(Lcom/secaccu/clock/AutoClickService;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/secaccu/clock/AutoClickService$1;->this$0:Lcom/secaccu/clock/AutoClickService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 17
    sget-object v0, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    iget-object v1, p0, Lcom/secaccu/clock/AutoClickService$1;->this$0:Lcom/secaccu/clock/AutoClickService;

    invoke-virtual {v0, v1}, Lcom/secaccu/clock/AutoClickEngine;->evaluate(Landroid/content/Context;)V

    .line 18
    invoke-static {}, Lcom/secaccu/clock/AutoClickService;->access$000()Lcom/secaccu/clock/AutoClickService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickService$1;->this$0:Lcom/secaccu/clock/AutoClickService;

    invoke-static {v0}, Lcom/secaccu/clock/AutoClickService;->access$100(Lcom/secaccu/clock/AutoClickService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    :cond_0
    return-void
.end method
