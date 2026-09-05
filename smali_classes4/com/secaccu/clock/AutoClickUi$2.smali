.class Lcom/secaccu/clock/AutoClickUi$2;
.super Ljava/lang/Object;
.source "AutoClickUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/secaccu/clock/AutoClickUi;->attach(Landroid/app/Activity;)V
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

    .line 73
    iput-object p1, p0, Lcom/secaccu/clock/AutoClickUi$2;->this$0:Lcom/secaccu/clock/AutoClickUi;

    iput-object p2, p0, Lcom/secaccu/clock/AutoClickUi$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 76
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickUi$2;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 77
    new-instance p1, Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/secaccu/clock/AutoClickUi$2;->val$activity:Landroid/app/Activity;

    .line 79
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 80
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 81
    sget-object p1, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi$2;->val$activity:Landroid/app/Activity;

    .line 83
    const-string v1, "auto_click_need_overlay"

    const-string v2, "string"

    invoke-static {v0, v1, v2}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {p1, v0, v1}, Lcom/secaccu/clock/AutoClickEngine;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    return-void

    .line 86
    :cond_0
    sget-object p1, Lcom/secaccu/clock/AutoClickOverlay;->INSTANCE:Lcom/secaccu/clock/AutoClickOverlay;

    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/secaccu/clock/AutoClickOverlay;->startPicker(Landroid/content/Context;)V

    .line 87
    return-void
.end method
