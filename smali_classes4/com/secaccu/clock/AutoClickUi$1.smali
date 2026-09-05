.class Lcom/secaccu/clock/AutoClickUi$1;
.super Ljava/lang/Object;
.source "AutoClickUi.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 45
    iput-object p1, p0, Lcom/secaccu/clock/AutoClickUi$1;->this$0:Lcom/secaccu/clock/AutoClickUi;

    iput-object p2, p0, Lcom/secaccu/clock/AutoClickUi$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 48
    const/4 p1, 0x0

    if-eqz p2, :cond_2

    .line 49
    sget-object p2, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p2, v0}, Lcom/secaccu/clock/AutoClickEngine;->hasPosition(Landroid/content/Context;)Z

    move-result p2

    const-string v0, "string"

    if-nez p2, :cond_0

    .line 50
    iget-object p2, p0, Lcom/secaccu/clock/AutoClickUi$1;->this$0:Lcom/secaccu/clock/AutoClickUi;

    invoke-static {p2}, Lcom/secaccu/clock/AutoClickUi;->access$000(Lcom/secaccu/clock/AutoClickUi;)Lcom/google/android/material/materialswitch/MaterialSwitch;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/material/materialswitch/MaterialSwitch;->setChecked(Z)V

    .line 51
    sget-object p1, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    iget-object p2, p0, Lcom/secaccu/clock/AutoClickUi$1;->val$activity:Landroid/app/Activity;

    .line 53
    const-string v1, "auto_click_need_pos"

    invoke-static {p2, v1, v0}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {p1, p2, v0}, Lcom/secaccu/clock/AutoClickEngine;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    return-void

    .line 56
    :cond_0
    sget-object p2, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    iget-object v1, p0, Lcom/secaccu/clock/AutoClickUi$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p2, v1}, Lcom/secaccu/clock/AutoClickEngine;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 57
    iget-object p2, p0, Lcom/secaccu/clock/AutoClickUi$1;->this$0:Lcom/secaccu/clock/AutoClickUi;

    invoke-static {p2}, Lcom/secaccu/clock/AutoClickUi;->access$000(Lcom/secaccu/clock/AutoClickUi;)Lcom/google/android/material/materialswitch/MaterialSwitch;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/material/materialswitch/MaterialSwitch;->setChecked(Z)V

    .line 58
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickUi$1;->this$0:Lcom/secaccu/clock/AutoClickUi;

    iget-object p2, p0, Lcom/secaccu/clock/AutoClickUi$1;->val$activity:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/secaccu/clock/AutoClickUi;->access$100(Lcom/secaccu/clock/AutoClickUi;Landroid/app/Activity;)V

    .line 59
    sget-object p1, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    iget-object p2, p0, Lcom/secaccu/clock/AutoClickUi$1;->val$activity:Landroid/app/Activity;

    .line 61
    const-string v1, "auto_click_need_a11y"

    invoke-static {p2, v1, v0}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {p1, p2, v0}, Lcom/secaccu/clock/AutoClickEngine;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    return-void

    .line 64
    :cond_1
    sget-object p1, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    iget-object p2, p0, Lcom/secaccu/clock/AutoClickUi$1;->val$activity:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/secaccu/clock/AutoClickEngine;->setEnabled(Landroid/content/Context;Z)V

    .line 65
    sget-object p1, Lcom/secaccu/clock/AutoClickOverlay;->INSTANCE:Lcom/secaccu/clock/AutoClickOverlay;

    iget-object p2, p0, Lcom/secaccu/clock/AutoClickUi$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/secaccu/clock/AutoClickOverlay;->syncMarker(Landroid/content/Context;)V

    goto :goto_0

    .line 67
    :cond_2
    sget-object p2, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    iget-object v0, p0, Lcom/secaccu/clock/AutoClickUi$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p2, v0, p1}, Lcom/secaccu/clock/AutoClickEngine;->setEnabled(Landroid/content/Context;Z)V

    .line 68
    sget-object p1, Lcom/secaccu/clock/AutoClickOverlay;->INSTANCE:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-virtual {p1}, Lcom/secaccu/clock/AutoClickOverlay;->hideAll()V

    .line 70
    :goto_0
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickUi$1;->this$0:Lcom/secaccu/clock/AutoClickUi;

    iget-object p2, p0, Lcom/secaccu/clock/AutoClickUi$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/secaccu/clock/AutoClickUi;->refresh(Landroid/app/Activity;)V

    .line 71
    return-void
.end method
