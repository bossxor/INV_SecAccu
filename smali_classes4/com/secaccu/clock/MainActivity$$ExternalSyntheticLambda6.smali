.class public final synthetic Lcom/secaccu/clock/MainActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/textfield/TextInputEditText;

.field public final synthetic f$1:Lcom/secaccu/clock/MainActivity;

.field public final synthetic f$2:Lcom/google/android/material/textfield/TextInputEditText;

.field public final synthetic f$3:Lcom/secaccu/clock/TimeSite;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/textfield/TextInputEditText;Lcom/secaccu/clock/MainActivity;Lcom/google/android/material/textfield/TextInputEditText;Lcom/secaccu/clock/TimeSite;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/secaccu/clock/MainActivity$$ExternalSyntheticLambda6;->f$0:Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p2, p0, Lcom/secaccu/clock/MainActivity$$ExternalSyntheticLambda6;->f$1:Lcom/secaccu/clock/MainActivity;

    iput-object p3, p0, Lcom/secaccu/clock/MainActivity$$ExternalSyntheticLambda6;->f$2:Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p4, p0, Lcom/secaccu/clock/MainActivity$$ExternalSyntheticLambda6;->f$3:Lcom/secaccu/clock/TimeSite;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/secaccu/clock/MainActivity$$ExternalSyntheticLambda6;->f$0:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, p0, Lcom/secaccu/clock/MainActivity$$ExternalSyntheticLambda6;->f$1:Lcom/secaccu/clock/MainActivity;

    iget-object v2, p0, Lcom/secaccu/clock/MainActivity$$ExternalSyntheticLambda6;->f$2:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v3, p0, Lcom/secaccu/clock/MainActivity$$ExternalSyntheticLambda6;->f$3:Lcom/secaccu/clock/TimeSite;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/secaccu/clock/MainActivity;->$r8$lambda$v4vxfTs5XORlyCcfELUx-MyhCOw(Lcom/google/android/material/textfield/TextInputEditText;Lcom/secaccu/clock/MainActivity;Lcom/google/android/material/textfield/TextInputEditText;Lcom/secaccu/clock/TimeSite;Landroid/content/DialogInterface;I)V

    return-void
.end method
