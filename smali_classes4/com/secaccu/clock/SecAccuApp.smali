.class public final Lcom/secaccu/clock/SecAccuApp;
.super Landroid/app/Application;
.source "SecAccuApp.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/secaccu/clock/SecAccuApp$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00052\u00020\u0001:\u0001\u0005B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/secaccu/clock/SecAccuApp;",
        "Landroid/app/Application;",
        "()V",
        "onCreate",
        "",
        "Companion",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/secaccu/clock/SecAccuApp$Companion;

.field private static instance:Lcom/secaccu/clock/SecAccuApp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/secaccu/clock/SecAccuApp$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/secaccu/clock/SecAccuApp$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/secaccu/clock/SecAccuApp;->Companion:Lcom/secaccu/clock/SecAccuApp$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/secaccu/clock/SecAccuApp;
    .locals 1

    .line 5
    sget-object v0, Lcom/secaccu/clock/SecAccuApp;->instance:Lcom/secaccu/clock/SecAccuApp;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 7
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 8
    sput-object p0, Lcom/secaccu/clock/SecAccuApp;->instance:Lcom/secaccu/clock/SecAccuApp;

    .line 9
    return-void
.end method
