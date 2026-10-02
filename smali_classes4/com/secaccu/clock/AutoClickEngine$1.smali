.class Lcom/secaccu/clock/AutoClickEngine$1;
.super Ljava/lang/Object;
.source "AutoClickEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/secaccu/clock/AutoClickEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/secaccu/clock/AutoClickEngine;


# direct methods
.method constructor <init>(Lcom/secaccu/clock/AutoClickEngine;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/secaccu/clock/AutoClickEngine$1;->this$0:Lcom/secaccu/clock/AutoClickEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 34
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickEngine$1;->this$0:Lcom/secaccu/clock/AutoClickEngine;

    iget-object v1, p0, Lcom/secaccu/clock/AutoClickEngine$1;->this$0:Lcom/secaccu/clock/AutoClickEngine;

    invoke-static {v1}, Lcom/secaccu/clock/AutoClickEngine;->access$000(Lcom/secaccu/clock/AutoClickEngine;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/secaccu/clock/AutoClickEngine$1;->this$0:Lcom/secaccu/clock/AutoClickEngine;

    invoke-static {v3}, Lcom/secaccu/clock/AutoClickEngine;->access$100(Lcom/secaccu/clock/AutoClickEngine;)J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/secaccu/clock/AutoClickEngine;->access$200(Lcom/secaccu/clock/AutoClickEngine;JJ)V

    .line 35
    return-void
.end method
