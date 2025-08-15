<template>
  <v-container>
    <v-layout wrap>
      <v-card>
        <v-card-title>
          {{Login}}
        </v-card-title>
        <v-card-text>
          <p>
          Sign in with your method of choice.
          </p>
          <v-divider/>
            <v-form>
              <v-text-field
                  outline
                  label = "Username"
                  type = "text"
                  v-model = "username"
                  />

                <v-form>
                  <v-text-field
                      outline
                      label = "Password"
                      type = "password"
                      v-model = "password"
                      />


                </v-form>
        </v-card-text>
        <v-divider/>
        <v-card-actions>
          <v-checkbox
              v-model="checkbox1"
              :label="Remember Me"
          <v-btn flat>
            Forgot Password
          </v-btn>
          <v-btn>
            Create Account
          </v-btn>
          <v-btn>
            Login
          </v-btn>
          <v-btn>
            Google
          </v-btn>
        </v-card-actions>

      </v-card>

    </v-layout>
  </v-container>
</template>

<script>
  // need to pnpm i vuetify
export default {

   
  
}
</script>
